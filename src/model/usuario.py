from pydantic import BaseModel, EmailStr

class Usuario(BaseModel):
    id:int
    nome:str
    email:EmailStr
    senha_hash:str
    pode_editar:bool