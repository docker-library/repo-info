## `hylang:1-python3.13-windowsservercore`

```console
$ docker pull hylang@sha256:924613966d9aa2daff54ab3b0e972f624542468cea8f978c4d5bcf0a9dc15b8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `hylang:1-python3.13-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:c1c6a93470cd5fbe077dc54635fa17364ddb22bad056f3a183499224bd89599b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2525560043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a26c8c685a7d51e403418cdc5cbd494888eee65797960b2b4c0505d0a0651b7`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:48:43 GMT
ENV PYTHON_VERSION=3.13.15
# Wed, 09 Sep 2026 22:48:44 GMT
ENV PYTHON_SHA256=edec09c4853aeae9ac36efb8c9f95b6b8e2fee65eee56d9767a8b7c69c574403
# Wed, 09 Sep 2026 22:49:16 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:17 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:26:18 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:26:18 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:27:13 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:27:13 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1cdb508a777f0779f22f44072e8f4baa5cf3e1cb5326ac2ac633bc89ff874`  
		Last Modified: Wed, 09 Sep 2026 22:49:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e5ed082552feda1e52456903dcb3675fbe17edd5e3874f4b16e3e7b6954eef`  
		Last Modified: Wed, 09 Sep 2026 22:49:21 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce4a9294ee7bb1bd79ad42e2e609cbaf9ba91cd38bae5aaaf242f2dc971d890`  
		Last Modified: Wed, 09 Sep 2026 22:49:21 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f32ddf955fb387d1e7b48ac52982944ac469e18f608dcb5d982d1dffe64eb7`  
		Last Modified: Wed, 09 Sep 2026 22:49:26 GMT  
		Size: 59.5 MB (59520176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee1318d706e2bad962f70a90b72b89044e98054f180ced3b8bf36ab3495d2c3`  
		Last Modified: Wed, 09 Sep 2026 22:49:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc67f1b7ebb722dec07fa9a62805764631ee0f4cff5b80e9405ce824b459a9d`  
		Last Modified: Wed, 09 Sep 2026 23:27:18 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e3257943d5e0647b8bde445889114f1692978792a8849336fc84694316fb02`  
		Last Modified: Wed, 09 Sep 2026 23:27:18 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb993e9f18ebebbb5400022d0031b384852b341ec3928380dfae920bb0d47bc`  
		Last Modified: Wed, 09 Sep 2026 23:27:19 GMT  
		Size: 8.4 MB (8399952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a885113bb8bd311f78c483b1354a3005377b2663a6ab5ce488d15082c69b563b`  
		Last Modified: Wed, 09 Sep 2026 23:27:17 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-python3.13-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:1755ca1ed12ce4393b781778b01477d43cbeb08a15c0644e266085553034b3c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2286871795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a08d833c2a0399d177e20958251c56f6bf4fdcac8a6aeba1c8059f5708942fd`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:45:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:51:06 GMT
ENV PYTHON_VERSION=3.13.15
# Wed, 09 Sep 2026 22:51:07 GMT
ENV PYTHON_SHA256=edec09c4853aeae9ac36efb8c9f95b6b8e2fee65eee56d9767a8b7c69c574403
# Wed, 09 Sep 2026 22:51:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:51:45 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:27:29 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:27:30 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:27:56 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:27:57 GMT
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
	-	`sha256:b68a4effca28d16bcb5099d80abf377f9661f7d87ac3775bee9e2c6cb8c24867`  
		Last Modified: Wed, 09 Sep 2026 22:46:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bbce483ff8d536a77cb65d95069f6bc380d86bfd64500b5efe4c0aa270884e`  
		Last Modified: Wed, 09 Sep 2026 22:50:48 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37952b16f3f2c8463f81e19db3e7a2ecbe3bae1672b5c30f21293b5011779ceb`  
		Last Modified: Wed, 09 Sep 2026 22:51:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9da6fb5497690c2e7068b1cf964116af5a7c8fc43289093c131211c425b91f`  
		Last Modified: Wed, 09 Sep 2026 22:51:49 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2c716b61c24be207876889860f53dd0c2eaf7434b4091e59c267b01136366e`  
		Last Modified: Wed, 09 Sep 2026 22:51:54 GMT  
		Size: 59.3 MB (59252107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c52c81d712b400b0391f820f0c9976ac1fdc5081ba96187355ba80bfecc5314`  
		Last Modified: Wed, 09 Sep 2026 22:51:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22ae9b0d7f9fcdf71fd2b24789decc8d7d3200c624ad7ed41c4f838cfd620d`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1442b33f5a5c75b32944a2cf0f28e4f52fdf2e81f2fe53ba0993c5e058b0e005`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71ada0ce4977b7024790d6d3c4af3d7eb46ab2b887a063c862e540fed1b6706`  
		Last Modified: Wed, 09 Sep 2026 23:28:02 GMT  
		Size: 8.1 MB (8120462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0daa2155bb7e3fe8da36d9840c4c3cf93280e56749ae863ed9364dec51464`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
