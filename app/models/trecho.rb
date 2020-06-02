class Trecho < ActiveRecord::Base
    scope :origem, -> (origem) { where origem: origem }
    scope :destino, -> (destino) { where destino: destino }
end
