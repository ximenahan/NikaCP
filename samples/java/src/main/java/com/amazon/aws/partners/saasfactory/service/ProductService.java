/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.amazon.aws.partners.saasfactory.service;

import com.amazon.aws.partners.saasfactory.domain.Category;
import com.amazon.aws.partners.saasfactory.domain.Product;

import java.util.List;

public interface ProductService {

    public List<Product> getProducts();

    public Product getProduct(Integer productId);

    public Product saveProduct(Product product);

    public Product deleteProduct(Product product);

    public List<Category> getCategories();

    public Category getCategory(Integer categoryId);

    public Category getCategoryByName(String name);

    public Category saveCategory(Category category);

    public Category deleteCategory(Category category);
}
