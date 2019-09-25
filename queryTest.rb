#Ruby Script para consolidacao de qq fucking necessidade

connection = OCI8.new 'rol_adm', 'rol_adm', '10.66.3.154:1521/xe'

# Qualquer query que tu queira fazer, pra consolidação e insert
cursor = connection.exec 'select titulo texto from teste'

# o resultado tu imprime num arquivo log..... ou grava na tabela...
while r = cursor.fetch()
  puts r.join(',')
end

#fecha conexoes
cursor.close
connection.logoff
