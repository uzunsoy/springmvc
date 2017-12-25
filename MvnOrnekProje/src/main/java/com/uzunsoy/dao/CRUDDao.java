package com.uzunsoy.dao;

public interface CRUDDao<T> {

	public void create(T varlik);

	public T read(Long id);

	public void update(T varlik);

	public void delete(T varlik);

}
