package com.example.standard.util;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedTypes;
import org.apache.ibatis.type.TypeHandler;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@MappedTypes(Continent.class)
public class ContinentTypeHandler implements TypeHandler<Continent> {

	@Override
	public void setParameter(PreparedStatement ps, int i, Continent parameter, JdbcType jdbcType) throws SQLException {
		ps.setString(i, parameter.getSymbol());
		log.trace(String.format("[%s => %s]", parameter, parameter.getSymbol()));
	}

	@Override
	public Continent getResult(ResultSet rs, String columnName) throws SQLException {
		String value = rs.getString(columnName);
		
		if (value != null) {
			Continent continent = Continent.valueOf(value.replace(" ", ""));
			log.trace(String.format("[%s <= %s]", continent, value));
			return continent;
		}
		
		return null;
	}

	@Override
	public Continent getResult(ResultSet rs, int columnIndex) throws SQLException {
		String value = rs.getString(columnIndex);
		
		if (value != null) {
			Continent continent = Continent.valueOf(value.replace(" ", ""));
			log.trace(String.format("[%s <= %s]", continent, value));
			return continent;
		}
		
		return null;
	}

	@Override
	public Continent getResult(CallableStatement cs, int columnIndex) throws SQLException {
		String value = cs.getString(columnIndex);
		
		if (value != null) {
			Continent continent = Continent.valueOf(value.replace(" ", ""));
			log.trace(String.format("[%s <= %s]", continent, value));
			return continent;
		}
		
		return null;
	}

}
