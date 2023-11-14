from pydantic import BaseModel, List
from model.usuario import Usuario

class Quadro(BaseModel):
    id:int
    titulo:str
    descricao:str
    usuarios:List[Usuario]