package com.uzunsoy.service;
public interface CRUDService<T> {

	public void create(T varlik);

	public T read(Long id);

	public void update(T varlik);

	public void delete(T varlik);

}
