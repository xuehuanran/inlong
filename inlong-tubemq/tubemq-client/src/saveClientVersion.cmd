@rem
@rem Licensed to the Apache Software Foundation (ASF) under one or more
@rem contributor license agreements.  See the NOTICE file distributed with
@rem this work for additional information regarding copyright ownership.
@rem The ASF licenses this file to You under the Apache License, Version 2.0
@rem (the "License"); you may not use this file except in compliance with
@rem the License.  You may obtain a copy of the License at
@rem
@rem    http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@echo off
set version=%1
set outputDirectory=%2

md %outputDirectory%\org\apache\inlong\tubemq\client\common
set TubeClientVersion=%outputDirectory%\org\apache\inlong\tubemq\client\common\TubeClientVersion.java"

echo /* > %TubeClientVersion%
echo  * Generated by src/saveClientVersion.cmd>> %TubeClientVersion%
echo  */>> %TubeClientVersion%
echo package org.apache.inlong.tubemq.client.common;>> %TubeClientVersion%
echo,>> %TubeClientVersion%
echo public class TubeClientVersion {>> %TubeClientVersion%
echo     public static final String CONSUMER_VERSION = "%version%";>> %TubeClientVersion%
echo     public static final String PRODUCER_VERSION = "%version%";>> %TubeClientVersion%
echo } >> %TubeClientVersion%
