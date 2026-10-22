## `hylang:python3.14-windowsservercore`

```console
$ docker pull hylang@sha256:408af69b4da4d4dc8f87e558290a2e2a57a899e104584833f795550951b8ef3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hylang:python3.14-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:670c324153c81458e44000fa28c2a2559ab11a3761e3b3ee3b2dad9df28504a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2469603909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228a9ce826434c42e4b2248954c3647fd2def8a0fdfb7a47ad4b289f06d221b4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 22:12:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:30:35 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 21 Oct 2026 22:31:35 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:31:36 GMT
ENV PYTHON_SHA256=a247a0b612244a803f507b39fb7121e3602e4160d59c3b99d98e735289c53394
# Wed, 21 Oct 2026 22:32:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:32:08 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:45:50 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:45:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:47:32 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:47:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191e7b66cb854415c1a42281cdbe07fa32854ef0e4df6bcc374620de008517f2`  
		Last Modified: Wed, 21 Oct 2026 22:15:00 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cfadb3c33e7d4fbb88f6dbecd2057b7a52299f3a4997cfdf0726c3a8a42a1`  
		Last Modified: Wed, 21 Oct 2026 22:31:15 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45fa3391b4b67643cef4085fbc9b0102cccd3c2d331ffe9c4ca00031ef8c7c3`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f0588e337f9a453b7bd5f98c7f10033ad1fb604e55eb7e0ec8b0bef4bbf697`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d48a733d7f1d7336080c7d8ff366db80c91cdf2142992e9db819cfa5bb250a`  
		Last Modified: Wed, 21 Oct 2026 22:32:19 GMT  
		Size: 69.2 MB (69246091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116554fb03f1f30fc50d8ad015ec692e0580d4dab9892bf214fe92ffcaefa7a5`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af252eb0985c01a1591b3251414e606725db07dac0cbab68ce2b8c7575e5403`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a23202c82f6241b0c1503bbe3223548ea77db2ba369d8c7da427c7a20d31584`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8dadf95e5d1a3f19e7a9e2c9093733f8684fd168c334b43cdff27479636595`  
		Last Modified: Wed, 21 Oct 2026 22:47:38 GMT  
		Size: 8.4 MB (8353089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201acc156f37b31888f471ed471fb496d3ba417bdc13db9de42b92f4eeff5c19`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.14-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:902ccfaedf03edca46ef68145784219af34d0ef6e2052cd07414e3d1396006e5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2303494402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f087569248c66942da48721ec4c27c82989ba82a6c1b9414343eb2b5e85b8b5`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 22:11:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:30:40 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 21 Oct 2026 22:32:08 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:32:08 GMT
ENV PYTHON_SHA256=a247a0b612244a803f507b39fb7121e3602e4160d59c3b99d98e735289c53394
# Wed, 21 Oct 2026 22:32:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:32:41 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:45:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:45:54 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:47:40 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:47:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c6aba90dbb9bb75beba9b047d772d576ae55d3a87354de75f0b41ad837331`  
		Last Modified: Wed, 21 Oct 2026 22:17:19 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83678c2c7603b9f41d74f599899768084fae18f484d40d6ac75516ccc2a3fd8b`  
		Last Modified: Wed, 21 Oct 2026 22:31:46 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b02e2a905d70b1e4d38eb893cf482d66b9a9eff518e2dd50365deaee574f1`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f28b8e9d048c4a3f5f7d5c579c3bcf23d0b7f79fefe0e99894e0e194c2b27`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7be21476304f6c66b8559b3b5c7681bd73cb9e71e21cd530d36266a7666d61`  
		Last Modified: Wed, 21 Oct 2026 22:32:51 GMT  
		Size: 69.0 MB (69046334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07804ec435d8ed10e2b980833feb2b08f6ba06a51d6c6072060361d68adf7a85`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b471c591199653d221bae066ce5c8c2475826a7020d5d23dc851f151b50441`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed39a5b09ac399f8b378697bd9dac890c9c0d48d85f3bfadf62cc178c0583406`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197a2f5562da0f3d842e9a205701561eac00816197fda3f7a3aa0583725150c2`  
		Last Modified: Wed, 21 Oct 2026 22:47:47 GMT  
		Size: 8.2 MB (8152055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a813a333e1485399d5f832ab1a2de478914d37bd3427d491c628981e39ffae`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
