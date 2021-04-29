@REM for %%x in (Ant HalfCheetah Hopper Humanoid Walker2d) do ^
@REM python run_hw1.py ^
@REM     --expert_policy_file ../policies/experts/%%x.pkl ^
@REM     --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
@REM     --env_name %%x-v2 ^
@REM     --exp_name bc ^
@REM     --n_iter 1 ^
@REM     --video_log_freq 1

@REM for %%x in (Ant HalfCheetah Hopper Humanoid Walker2d) do ^
@REM python run_hw1.py ^
@REM     --expert_policy_file ../policies/experts/%%x.pkl ^
@REM     --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
@REM     --env_name %%x-v2 ^
@REM     --exp_name bc_dagger ^
@REM     --do_dagger ^
@REM     --n_iter 21 ^
@REM     --video_log_freq 5

@REM for %%x in (Humanoid) do ^
@REM python run_hw1.py ^
@REM     --expert_policy_file ../policies/experts/%%x.pkl ^
@REM     --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
@REM     --env_name %%x-v2 ^
@REM     --exp_name bc_dagger_long ^
@REM     --do_dagger ^
@REM     --n_iter 1001 ^
@REM     --video_log_freq 5

for %%x in (Humanoid) do ^
python run_hw1.py ^
    --expert_policy_file ../policies/experts/%%x.pkl ^
    --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
    --env_name %%x-v2 ^
    --exp_name bc_dagger_long_lowlr ^
    --do_dagger ^
    --n_iter 501 ^
    --learning_rate 1e-3 ^
    --video_log_freq 5

@REM for %%x in (Humanoid) do ^
@REM python run_hw1.py ^
@REM     --expert_policy_file ../policies/experts/%%x.pkl ^
@REM     --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
@REM     --env_name %%x-v2 ^
@REM     --exp_name bc_dagger_long_more_step ^
@REM     --do_dagger ^
@REM     --n_iter 501 ^
@REM     --num_agent_train_steps_per_iter 2000 ^
@REM     --video_log_freq 5

@REM for %%x in (Humanoid) do ^
@REM python run_hw1.py ^
@REM     --expert_policy_file ../policies/experts/%%x.pkl ^
@REM     --expert_data ../expert_data/expert_data_%%x-v2.pkl ^
@REM     --env_name %%x-v2 ^
@REM     --exp_name bc_dagger_long_bigbatch ^
@REM     --do_dagger ^
@REM     --n_iter 501 ^
@REM     --train_batch_size 1000 ^
@REM     --video_log_freq 5

@REM --learning_rate 1e-3 ^
@REM     --num_agent_train_steps_per_iter 2000 ^
@REM --eval_batch_size 5000 ^
    
    