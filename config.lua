-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG
-----------------------------------------------------------------------------------------------------------------------------------------
arcade = {} -- NÂO MUDE!
-----------------------------------------------------------------------------------------------------------------------------------------
-- HANDLINGS
-----------------------------------------------------------------------------------------------------------------------------------------
arcade["handlings"] = { --OBSERVAÇÃO: O VEÍCULO SÓ TERÁ A HANDLING MODIFICADA QUANDO VOCÊ ENTRAR NELE, ENTÃO LEMBRE-SE, CASO DER ENSURE, SAIRA DO VEICULO E ENTRE NOVAMENTE!
    [-431692672] = { -- Deixei como demonstração a handling do panto, para você conseguir acesso a handling do veículo utilize /handling dentro do carro.
        ['fAudio'] = "monster4",
        ['fGravity'] = 9.80,
        ['fMass'] = 800.0,
        ['fInitialDragCoeff'] = 11.0,
        ['fDriveBiasFront'] = 0.0,
        ['nInitialDriveGears'] = 6.0,
        ['fInitialDriveForce'] = 0.2700,
        ['fDriveInertia'] = 1.0,
        ['fClutchChangeRateScaleUpShift'] = 2.7999,
        ['fClutchChangeRateScaleDownShift'] = 2.7999,
        ['fInitialDriveMaxFlatVel'] = 132.0,
        ['fBrakeForce'] = 0.5968,
        ['fHandBrakeForce'] = 0.4947,
        ['fSteeringLock'] = 33.0,
        ['fTractionCurveMax'] = 1.9700,
        ['fTractionCurveMin'] = 1.7699,
        ['fLowSpeedTractionLossMult'] = 1.0,
        ['fTractionLossMult'] = 1.0,
        ['fSuspensionRaise'] = 0.0,
        ['fAntiRollBarForce'] = 1.2000,
        ['fRollCentreHeightFront'] = 0.1299,
        ['fCollisionDamageMult'] = 0.6999,
        ['fWeaponDamageMult'] = 1.0,
        ['fDeformationDamageMult'] = 0.6999,
        ['fEngineDamageMult'] = 1.5,
    },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DOCUMENTAÇÃO
-----------------------------------------------------------------------------------------------------------------------------------------
-- fAudio : Define qual o audio que o veículo deverá utilizar (obs: só poderá escolher audio de veículos existentes no gta v ex: ['fAudio'] = "panto")
-- fGravity : Altera a gravidade do veiculo, quanto maior mais pesado, isso influencia diretamente na estabilidade, curva e velocidade!
-- fMass : Determina o peso de um veículo, valor em quilogramas.
-- fInitialDragCoeff : Simula a resistência aerodinâmica do veículo, valor 10 ~ 120.
-- fDriveBiasFront : Determina se um veículo é de tração traseira, dianteira ou integral, valores entre 1.0 / 0.0 / 0.5 (respectivamente).
-- nInitialDriveGears : Determina a quantidade de marchas que um veículo possui em sua transmissão, valor 1 ~ ∞.
-- fInitialDriveForce : Modifica o cálculo do jogo em relação à força inicial na saída da transmissão, valor 0.01 ~ ∞.
-- fDriveInertia : Determina a velocidade de rotação do motor, valor 0.01 ~ ∞.
-- fClutchChangeRateScaleUpShift e fClutchChangeRateScaleDownShift : Determina a velocidade para troca de marchas maiores e menores (respectivamente).
-- fInitialDriveMaxFlatVel : Determina a velocidade máxima de um veículo, valor 0.00 ~ ∞, não garante que o veículo irá atingir tal velocidade (multiplicar o valor por 1.32 para obter a velocidade em KM/H).
-- fBrakeForce : Determina a força de freio, valor 0.01 ~ ∞
-- fHandBrakeForce : Determina a força do freio de mão, valor 0.00 ~ ∞.
-- fSteeringLock : Determina o ângulo máximo de virada do volante/roda, valor 0.01 ~ ∞.
-- fTractionCurveMax : Determina a aderência do veículo multiplicada pela fricção da roda ao solo.
-- fTractionCurveMin : Determina a aderência do veículo multiplicada pela fricção da roda ao solo enquanto acelera/freia.
-- fLowSpeedTractionLossMult : Determina o quanto de tração é perdida em baixas velocidades, também conhecida como o "cantar pneu quando acelera", valores maiores causarão menos aderência quando acelerar.
-- fTractionLossMult : Afeta o quanto que um carro pode aderir à diferentes tipos de superfície (asfalto, terra, lama, areia), valores maiores causarão mais perda de controle.
-- fSuspensionRaise : Determina a altura da suspensão em relação da carroceria e rodas do veículo.
-- fAntiRollBarForce : Números maiores = menos capotamento da carroceria.
-- fRollCentreHeightFront : Números maiores = menos capotamento do veículo.
-- fCollisionDamageMult : Múltiplo do dano causado ao veículo causado por colisões.
-- fWeaponDamageMult : Múltiplo do dano causado ao veículo causado por disparos.
-- fDeformationDamageMult : Múltiplo da deformação da carroceria.
-- fEngineDamageMult : Múltiplo do dano causado ao motor.