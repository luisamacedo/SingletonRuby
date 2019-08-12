# A classe Singleton define o método 'instance' que permite que os clientes acessem a
# instância única singleton.

class Singleton
  @instance = new

  private_class_method :new

  #   O método estático que controla o acesso à instância singleton
  #   Esta implementação permite subclassificar a classe singleton mantendo apenas
  #   uma instância de cada subclasse ao redor.
  def self.instance
    @instance
  end

  #   Finalmente, qualquer singleton deve definir alguma lógica de negócios, que pode ser
  #   executado em sua instância.
  def some_business_logic
    # ...
  end
end

# O código do cliente.

s1 = Singleton.instance
s2 = Singleton.instance

if s1.equal?(s2)
  print 'Singleton funciona, as duas variáveis contêm a mesma instância.'
else
  print 'Singleton falhou, as variáveis contêm instâncias diferentes.'
end