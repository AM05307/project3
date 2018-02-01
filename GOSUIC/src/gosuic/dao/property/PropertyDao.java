package gosuic.dao.property;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import gosuic.entity.AptInfo;
import gosuic.vo.UserVo;

@Repository 
public class PropertyDao {
	
	@Autowired 
	JdbcTemplate jdbcTemplate;
	private SqlSession sql;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	//�Ź���� ���
	public List<AptInfo> listApt(){
		List<AptInfo> list = getJdbcTemplate().query("SELECT * FROM aptinfo", new RowMapper<AptInfo>() {
			@Override
			public AptInfo mapRow(ResultSet rs, int num) throws SQLException {
					AptInfo ob = new AptInfo();
					ob.setAptno(rs.getInt("aptno"));
					ob.setSigungu(rs.getString("sigungu"));
					ob.setBunji(rs.getString("bunji"));
					ob.setDanji(rs.getString("danji"));
					ob.setC_type(rs.getInt("c_type"));
					ob.setMyunjuk(rs.getString("myunjuk"));
					ob.setBojeung(rs.getString("bojeung"));
					ob.setWolse(rs.getString("wolse"));
					ob.setGunchook(rs.getString("gunchook"));
					
					return ob;
			}
		});
		return list;
	}
	
	
	}

