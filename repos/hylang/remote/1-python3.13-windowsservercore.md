## `hylang:1-python3.13-windowsservercore`

```console
$ docker pull hylang@sha256:a2f73b74e849d5e403be08f70de5508774dc334038525eb4917991e7c5fa3529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hylang:1-python3.13-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:2118e1b2de1ee69184f4328fe0b4f605c489de63887817e9ddf6228f673526b4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422776248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c242860e0f0cc425cb93bac293bfc04b690288a3cefe900d7b7393f260497b`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 21:17:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 21:18:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 10 Aug 2026 21:18:02 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 10 Aug 2026 21:18:03 GMT
ENV PYTHON_SHA256=edec09c4853aeae9ac36efb8c9f95b6b8e2fee65eee56d9767a8b7c69c574403
# Mon, 10 Aug 2026 21:20:07 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 21:20:08 GMT
CMD ["python"]
# Mon, 10 Aug 2026 22:13:39 GMT
ENV HY_VERSION=1.3.1
# Mon, 10 Aug 2026 22:13:42 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 10 Aug 2026 22:15:34 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 10 Aug 2026 22:15:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afacabd4b480e276e2bd0ebf3466acfd881bd601231c1163da25e7969e5d6596`  
		Last Modified: Mon, 10 Aug 2026 21:20:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e3ba0539a39be89f7c76b6eb9f78615857fef74e9b3e590b4e0a9b2a16ff6`  
		Last Modified: Mon, 10 Aug 2026 21:20:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82b31cad8a64042abbeb2b0445457a33172534ea24d5e52c31d0a433f18b659`  
		Last Modified: Mon, 10 Aug 2026 21:20:12 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6485f21e069df874fcb4f864845e22a21ecdb809ea083adaecbbf96dab74949b`  
		Last Modified: Mon, 10 Aug 2026 21:20:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95877c2c40fcaed214fc8f92a7a99d23dbeaf6dbf541f6d26efb9ce83b53e14`  
		Last Modified: Mon, 10 Aug 2026 21:20:18 GMT  
		Size: 59.5 MB (59462327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98028c77eb2ee89e8884e029d45fee2f6d5203833d6f971911f3f4300e764592`  
		Last Modified: Mon, 10 Aug 2026 21:20:12 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590165141348430bd88045b655eeabaec7940653745c651c6cb1366d17719cf3`  
		Last Modified: Mon, 10 Aug 2026 22:15:39 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454254a61f74727dd2bca4145780cfc62ffc3f7543b42d33db730ffef4c5b958`  
		Last Modified: Mon, 10 Aug 2026 22:15:39 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916e00a8ffa82546b996be632471f19c38943f2b9229b5ac91c8881349df5b80`  
		Last Modified: Mon, 10 Aug 2026 22:15:40 GMT  
		Size: 8.3 MB (8295367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7632d2e6ce20329dc17dfee98c3bfee1fd0939bbef1aa263469cf694209ac384`  
		Last Modified: Mon, 10 Aug 2026 22:15:39 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-python3.13-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:d0ed1f75a6bc64045c3eaf4c27ca8093392a1f06633a1124235382008032cda8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2224950865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333e283051810b832b5b4a0807f70b952de32124f6ebd11a2bfb2ba61b769565`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 21:19:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 21:19:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 10 Aug 2026 21:19:40 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 10 Aug 2026 21:19:42 GMT
ENV PYTHON_SHA256=edec09c4853aeae9ac36efb8c9f95b6b8e2fee65eee56d9767a8b7c69c574403
# Mon, 10 Aug 2026 21:22:42 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 21:22:44 GMT
CMD ["python"]
# Mon, 10 Aug 2026 22:13:35 GMT
ENV HY_VERSION=1.3.1
# Mon, 10 Aug 2026 22:13:38 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 10 Aug 2026 22:15:37 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 10 Aug 2026 22:15:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd88e2804cc6869d6a6ceb937ced1e7d0aecf2b4557ce223310a046f0ba7d064`  
		Last Modified: Mon, 10 Aug 2026 21:22:53 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd0a640cafee14510073df18f79ca71600c263649ab578478505543f44ff002`  
		Last Modified: Mon, 10 Aug 2026 21:22:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2598766c72c2504fc5e3f460690e947533f6bc2a2b50998ac4476e8b673667b`  
		Last Modified: Mon, 10 Aug 2026 21:22:51 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adee1ce7007a3548c1d48fee6ea742fccc8be464a9dcd74e6251777acc8df51`  
		Last Modified: Mon, 10 Aug 2026 21:22:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25dbb140ed9d9591fb79f6c4a186b0b051d842c249ef2564a8ac44c245b57107`  
		Last Modified: Mon, 10 Aug 2026 21:22:57 GMT  
		Size: 59.3 MB (59347394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b0b078299d8be5fce943e928c6e50afd69888e6b74b3a65af9cc47d70df6e7`  
		Last Modified: Mon, 10 Aug 2026 21:22:51 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f42961710c0f0e385634dedd4f5d05aeb90400b10e74d528635b1bde318c33f`  
		Last Modified: Mon, 10 Aug 2026 22:15:42 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411edf7cf1b105a23a9f7889fbd4bfb42e4e076a35c2af3f608ef44f7a70edc1`  
		Last Modified: Mon, 10 Aug 2026 22:15:42 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cc8ca11d10ad0299bcd664839b91e6c7e0aa38b968c7621a4b1468c0a42e8`  
		Last Modified: Mon, 10 Aug 2026 22:15:44 GMT  
		Size: 8.0 MB (8039843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9fb7f3c0bfae3e96d9b7498e6e4022dfb457247a366dcd31ca3d2790543de4`  
		Last Modified: Mon, 10 Aug 2026 22:15:42 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
