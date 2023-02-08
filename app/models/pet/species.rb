class Pet
  # Validations an helpers related to the Pet#species interface
  module Species
    extend ActiveSupport::Concern

    INFO = {
      ant: { icon: '🐜' },
      bat: { icon: '🦇' },
      bird: { icon: '🐦' },
      blowfish: { icon: '🐡' },
      boar: { icon: '🐗' },
      brown_bear: { icon: '🐻' },
      buffalo: { icon: '🐃' },
      bug: { icon: '🐛' },
      butterfly: { icon: '🦋' },
      camel: { icon: '🐫' },
      cat: { icon: '🐱' },
      chicken: { icon: '🐔' },
      chipmunk: { icon: '🐿' },
      cow: { icon: '🐄' },
      crab: { icon: '🦀' },
      cricket: { icon: '🦗' },
      crocodile: { icon: '🐊' },
      dog: { icon: '🐶' },
      dolphin: { icon: '🐬' },
      dove: { icon: '🕊' },
      dragon: { icon: '🐉' },
      dromedary: { icon: '🐪' },
      duck: { icon: '🦆' },
      eagle: { icon: '🦅' },
      elephant: { icon: '🐘' },
      fish: { icon: '🐟' },
      fox: { icon: '🦊' },
      frog: { icon: '🐸' },
      giraffe: { icon: '🦒' },
      goat: { icon: '🐐' },
      gorilla: { icon: '🦍' },
      hamster: { icon: '🐹' },
      hedgehog: { icon: '🦔' },
      honeybee: { icon: '🐝' },
      horse: { icon: '🐴' },
      koala: { icon: '🐨' },
      lady_beetle: { icon: '🐞' },
      lamb: { icon: '🐑' },
      leopard: { icon: '🐆' },
      lion: { icon: '🦁' },
      lizard: { icon: '🦎' },
      monkey: { icon: '🐵' },
      mouse: { icon: '🐭' },
      octopus: { icon: '🐙' },
      owl: { icon: '🦉' },
      ox: { icon: '🐂' },
      panda: { icon: '🐼' },
      penguin: { icon: '🐧' },
      pig: { icon: '🐷' },
      poodle: { icon: '🐩' },
      rabbit: { icon: '🐰' },
      ram: { icon: '🐏' },
      rat: { icon: '🐀' },
      rhinoceros: { icon: '🦏' },
      rooster: { icon: '🐓' },
      sauropod: { icon: '🦕' },
      scorpion: { icon: '🦂' },
      shark: { icon: '🦈' },
      shrimp: { icon: '🦐' },
      snail: { icon: '🐌' },
      snake: { icon: '🐍' },
      spider: { icon: '🕷' },
      squid: { icon: '🦑' },
      t_rex: { icon: '🦖' },
      tiger: { icon: '🐯' },
      tropical_fish: { icon: '🐠' },
      turkey: { icon: '🦃' },
      turtle: { icon: '🐢' },
      unicorn: { icon: '🦄' },
      whale: { icon: '🐋' },
      wolf: { icon: '🐺' },
      zebra: { icon: '🦓' }
    }.freeze

    def species_icon
      INFO.dig(symbolized_species, :icon)
    end

    def symbolized_species
      species.parameterize.underscore.to_sym
    end
  end
end
