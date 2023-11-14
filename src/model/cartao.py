from pydantic import BaseModel 

class Cartao(BaseModel):
    id:int
    titulo:str
    descricao:str
    estado:str
    id_quadro:int
    id_usuario:int