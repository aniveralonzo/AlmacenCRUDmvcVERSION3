/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import configuracion.Conexion;
import entidad.Proveedor;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    Conexion con=new Conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.Conectar());
    ModelAndView mav=new ModelAndView();
    
    int id;
    List datos;
        
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql="select* from infoproveedor";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;           
    }           
    
    @RequestMapping(value="agregar.htm",method=RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Proveedor());
        mav.setViewName("agregar");
        return mav;    
    }
  
     @RequestMapping(value="agregar.htm",method=RequestMethod.POST)
    public ModelAndView Agregar(Proveedor p){
        String sql="insert into infoproveedor(nombrecomercial,contacto,direccion,email,pais)values(?,?,?,?,?)";
        this.jdbcTemplate.update(sql,p.getNombrecomercial(),p.getContacto(),p.getDireccion(),p.getEmail(),p.getPais());       
        return new ModelAndView("redirect:/index.htm");            
    }
    
    @RequestMapping(value="editar.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        String sql="select*from infoproveedor where Id="+id;
        datos=this.jdbcTemplate.queryForList(sql);       
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;            
    }
    
    @RequestMapping(value="editar.htm",method=RequestMethod.POST)
    public ModelAndView Editar(Proveedor p){
       String sql="update infoproveedor set nombrecomercial=?, contacto=?, direccion=?, email=?, pais=? where Id=?";
       this.jdbcTemplate.update(sql,p.getNombrecomercial(),p.getContacto(),p.getDireccion(),p.getEmail(),p.getPais(),id);
       return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        String sql="delete from infoproveedor where Id="+id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
}
