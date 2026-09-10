## `hylang:python3.15-rc-windowsservercore`

```console
$ docker pull hylang@sha256:feedfca5d17f4a9a27eb26735ee1026d47ac48c0608d70ece2ff94c4db35eb3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:5cadfce594b9629a4fc6abdc956fd33b35dcd30db0cc133c0d5c04ac65186712
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2538321230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6128b901a8433c897e922189e2e761c0dabc547321d68800c489c8878b5f43ff`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:13 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:48:13 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Wed, 09 Sep 2026 22:48:14 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Wed, 09 Sep 2026 22:48:47 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:48 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:26:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:26:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:26:52 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:26:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b5a66eab7b5f15a463aff8ab14f48b32e2cc705064cf8d7586423813256d87`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95effb38a1f5de33033f8723d87a179dbde5b76e63c5bb9734be59a7df2b9843`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf67fd16a0b68f94223cc4418ffafc39c873940d584a51e2c4b89a853db58bac`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d562da5b66ba6c49925074982c5ac83b700d866db224272b67d42c2725579`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e828afc250885255efb5dfce277aee5f64c14d9a53e0f9190a20d9ec56eb08`  
		Last Modified: Wed, 09 Sep 2026 22:48:57 GMT  
		Size: 72.3 MB (72312315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b578f2876bf5640e6a2ac3df8a2e53febf0c83a6ecaa6d2452c57493f6373`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b4af847e5677374118df3a86c96ba540d78ebbdef5e8a4b178bce03c481d4`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44004de85f4baee924d48ff72ef905f528457fce92fb6cf4225fa5b6cee2af`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835b49c10c487a2dc6ee728ebc2ec17aa552ec1d6928628ca0c7ac5642b12c7`  
		Last Modified: Wed, 09 Sep 2026 23:26:58 GMT  
		Size: 8.4 MB (8369024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a0fb647974c3cece0094e2913ab22a37ccba8299ba3f059539ea2b71d26629`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:dd10251ea9db8e7cba8db9466b8a756d6ca7a91630f7883d6cdb442bee9ed696
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2299620561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90911a7f09cc8912686dcfac75b5f94bf2d9885a647f8fd965a0c6a6d74d5166`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:50:37 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:50:38 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Wed, 09 Sep 2026 22:50:38 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Wed, 09 Sep 2026 22:51:12 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:51:13 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:27:10 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:27:11 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:28:08 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:28:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e3851fb564d5167167d3035f5ebc832e140a7ad5cd320ee5e231bed99fb158`  
		Last Modified: Wed, 09 Sep 2026 22:51:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bd4363133a7a50a676072d7d73189af2218d47806a364eeea875a2189092d4`  
		Last Modified: Wed, 09 Sep 2026 22:51:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e38efe982216e6caa5c70e145acdb324856e4e1fd4e8de57df0133b8fe49af`  
		Last Modified: Wed, 09 Sep 2026 22:51:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06af6dd5f16e9b0bf37263e72d4d2a597bfd422d48efb1e5a10eb986a81813`  
		Last Modified: Wed, 09 Sep 2026 22:51:23 GMT  
		Size: 72.0 MB (72033264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fd48e732fd2853f5e6c6790f4c6827b0a7ba0d780f06daf6a969be90c652d9`  
		Last Modified: Wed, 09 Sep 2026 22:51:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d00a468e5f29e315c1c3d192ff13ffcb2805d433203342402f83d618dea492`  
		Last Modified: Wed, 09 Sep 2026 23:28:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3deb00dfa40ac895c1856b6b6f6a9f42fcb2d495f052885515b23dbb898b163`  
		Last Modified: Wed, 09 Sep 2026 23:28:13 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98368bde27ce5a527f3f61726a9baf6f89134b29f325bc80f4bb548c616b320`  
		Last Modified: Wed, 09 Sep 2026 23:28:15 GMT  
		Size: 8.1 MB (8088071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7984592558813554db94754c7972acf000c4dbf15f58bd9ebffa04c120f82f0d`  
		Last Modified: Wed, 09 Sep 2026 23:28:13 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
