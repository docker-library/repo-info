## `hylang:1-python3.13-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:5e4433d9d05de65aae5d564e6a6bcf0bff8a2c7abda147ecf49b7db8fe8861c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `hylang:1-python3.13-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

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
