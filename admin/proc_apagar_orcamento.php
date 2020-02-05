<?php
session_start();
$id =filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
include_once("conexao.php");
$result_usuario = "DELETE FROM disciplina WHERE id='$id'";
$resultado_usuario = mysqli_query($conn, $result_usuario);

if(mysqli_affected_rows($conn)){
	$_SESSION['msg'] = "<p style='color:green;'>usuario excluido com sucesso</p>";
	header("Location: listarDisciplina.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>falha ao excluir</p>";
	header("Location: editar.php?id=$id");
}