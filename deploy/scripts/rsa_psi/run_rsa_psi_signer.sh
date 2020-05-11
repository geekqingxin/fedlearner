#!/bin/bash

# Copyright 2020 The FedLearner Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -ex
export CUDA_VISIBLE_DEVICES=

python -m fedlearner.data_join.rsa_psi.rsa_psi_signer \
    --listen_port=50051 \
    --rsa_key_file_path=$RSA_KEY_PATH \
    --offload_processor_number=$OFFLOAD_PROCSSOR_NUMBER
