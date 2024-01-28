const jwt = require('jsonwebtoken'); // This will need to be included in your package.json dependencies

exports.handler = async (event) => {
  try {
    const token = event.authorizationToken; // Get the JWT token from the authorization header
    const decodedToken = jwt.decode(token); // Decode the token without verification (for demonstration purposes)
    
    // Verify the token (you will need to implement this part)
    // jwt.verify(token, secretOrPublicKey, [options, callback])

    // Check the user's group (role) within the decoded token claims
    const userGroup = decodedToken['cognito:groups'] ? decodedToken['cognito:groups'][0] : null;

    // Based on the user's role, return an IAM policy
    const policyDocument = {
      Version: "2012-10-17",
      Statement: [
        {
          Action: "execute-api:Invoke",
          Effect: userGroup === 'TenantAdmin' ? "Allow" : "Deny",
          Resource: event.methodArn,
        },
      ],
    };

    // Return the policy document
    return {
      principalId: decodedToken.sub, // Use the user's unique identifier from the token
      policyDocument,
    };
  } catch (error) {
    console.error('Error processing the token:', error);
    // Handle the error appropriately
  }
};
