@REM @REM exp1
@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 1000 ^
@REM     -dsa --exp_name q1_sb_no_rtg_dsa -l 1 -s 32

@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 1000 ^
@REM     -rtg -dsa --exp_name q1_sb_rtg_dsa -l 1 -s 32

@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 1000 ^
@REM     -rtg --exp_name q1_sb_rtg_na -l 1 -s 32

@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 5000 ^
@REM     -dsa --exp_name q1_lb_no_rtg_dsa -l 1 -s 32

@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 5000 ^
@REM     -rtg -dsa --exp_name q1_lb_rtg_dsa -l 1 -s 32

@REM python run_hw2.py ^
@REM     --env_name CartPole-v0 -n 100 -b 5000 ^
@REM     -rtg --exp_name q1_lb_rtg_na -l 1 -s 32

@REM exp2
@REM for %%r in (0.004 0.006 0.009) do ^
@REM python run_hw2.py ^
@REM     --env_name InvertedPendulum-v2 --ep_len 1000 --discount 0.9 ^
@REM     -n 100 -l 2 -s 64 -b 100 -lr 0.009 -rtg ^
@REM     --exp_name q2_b100_r0.009

@REM exp3
python run_hw2.py ^
    --env_name LunarLanderContinuous-v2 --ep_len 1000 --discount 0.99 ^
    -n 100 -l 2 -s 64 -b 40000 -lr 0.005 ^
    --reward_to_go --nn_baseline --exp_name q3_b40000_r0.005

@REM @REM exp4
@REM for %%r in (0.005 0.01 0.02) do ^
@REM python run_hw2.py ^
@REM     --env_name HalfCheetah-v2 --ep_len 150 --discount 0.95 ^
@REM     -n 100 -l 2 -s 32 -b 10000 -lr %%r ^
@REM     -rtg --nn_baseline --exp_name q4_search_b10000_lr%%r_rtg_nnbaseline

@REM for %%r in (0.005 0.01 0.02) do ^
@REM python run_hw2.py ^
@REM     --env_name HalfCheetah-v2 --ep_len 150 --discount 0.95 ^
@REM     -n 100 -l 2 -s 32 -b 30000 -lr %%r ^
@REM     -rtg --nn_baseline --exp_name q4_search_b30000_lr%%r_rtg_nnbaseline

@REM for %%r in (0.005 0.01 0.02) do ^
@REM python run_hw2.py ^
@REM     --env_name HalfCheetah-v2 --ep_len 150 --discount 0.95 ^
@REM     -n 100 -l 2 -s 32 -b 50000 -lr %%r ^
@REM     -rtg --nn_baseline --exp_name q4_search_b50000_lr%%r_rtg_nnbaseline