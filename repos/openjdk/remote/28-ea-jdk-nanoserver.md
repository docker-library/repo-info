## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:63e043c20032616f79f5753c3125e83d70d1445970057958e25b98f2cb710047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:fcee46efb1a202bf526a4b93d593a0ae71d19c2c9217bb8f2593c2e06a5c5c04
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.2 MB (441176589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac84350a2109c74fd666d8ff0140c6ddb796be385b09ed52f59273f79206e4d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Tue, 24 Nov 2026 01:07:39 GMT
SHELL [cmd /s /c]
# Tue, 24 Nov 2026 01:07:40 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 24 Nov 2026 01:07:40 GMT
USER ContainerAdministrator
# Tue, 24 Nov 2026 01:07:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 24 Nov 2026 01:07:55 GMT
USER ContainerUser
# Tue, 24 Nov 2026 01:07:55 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 01:08:58 GMT
COPY dir:68b4a14d04a21adc7ac61b7c72972feaf81cebf677e9e653223f9093785da3d1 in C:\openjdk-28 
# Tue, 24 Nov 2026 01:09:08 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 24 Nov 2026 01:09:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aacc99d42a12498a3a1c832d5fc9981372509b9f0b7ae95cece8c2cf7d84c9`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfc8f7a083e61316ebca3cb207c3b81ec8d6aee65a4d01ac75c169dad97f8a1`  
		Last Modified: Tue, 24 Nov 2026 01:09:14 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6c600dc4ab7fb0637d87d7f7858f20cfdac7f9f3b1d2435d680c39161f0d8`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1457e64e79af1fa36d07a439bb4138c5c67aebace41e0d4b67b11d8193f22ecc`  
		Last Modified: Tue, 24 Nov 2026 01:09:14 GMT  
		Size: 76.0 KB (76008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3400d5a47d8dfa14df3d92d1097061a546c924e98b8891718467c70c253c2919`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abda19a8f67b47007743df6d17453a85cfeaa0a9a04fe509a9137ad3eadc355`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f90c7a94681243aa90cca2d03a9f04383ca87d2c5f302b22b392fce15eb7d8`  
		Last Modified: Tue, 24 Nov 2026 01:09:29 GMT  
		Size: 240.8 MB (240757458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907d580b641f534a1a7ecfa7bac778d8bb3f2ae76d7eaa0b42f8e14583cc1a2b`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 97.1 KB (97064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905aa8c8caed1bc82bfb5362e806931d38788f51c69f89c7207efb358c480558`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:66304c1b57ba044b43e5da0562e05ee3e8cc7b1f02e0b234a5502cec46ce187e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.2 MB (367198499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d7ec5d1c506ae6317afc047f690a18082c5e978b42e6764b2c883585f8f8c4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Tue, 24 Nov 2026 01:07:12 GMT
SHELL [cmd /s /c]
# Tue, 24 Nov 2026 01:07:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 24 Nov 2026 01:07:14 GMT
USER ContainerAdministrator
# Tue, 24 Nov 2026 01:07:29 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 24 Nov 2026 01:07:30 GMT
USER ContainerUser
# Tue, 24 Nov 2026 01:07:30 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 01:09:04 GMT
COPY dir:68b4a14d04a21adc7ac61b7c72972feaf81cebf677e9e653223f9093785da3d1 in C:\openjdk-28 
# Tue, 24 Nov 2026 01:09:10 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 24 Nov 2026 01:09:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4668700dfbe08a5f2e464f1bdfa00395949db03b86a3b140b47cceda10f31d50`  
		Last Modified: Tue, 24 Nov 2026 01:09:16 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070a9a5d40a9cbab6493b4464b0d1e0e3285f249a2bbbedc931c89b5deb0e7c4`  
		Last Modified: Tue, 24 Nov 2026 01:09:16 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dff6d450134c312039b9a306195823ea3a2426802946a1fdb8a827547347b3d`  
		Last Modified: Tue, 24 Nov 2026 01:09:16 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f4801b8583c38787eea2c78368c00939501365c25e00bfdb72481b6c122d89`  
		Last Modified: Tue, 24 Nov 2026 01:09:16 GMT  
		Size: 67.1 KB (67088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf8956c4fd665ef9d6bda56f10e4a157d80d0c7480cc57cca9c105660124c39`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b00c850f31515f7d31fe0eab3d10325f1db4c0fa9add3d4362e8569ee2bc3`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43233439be94c33430ce95944c2e761718fbf82583c602f4c1606838cca3310b`  
		Last Modified: Tue, 24 Nov 2026 01:09:30 GMT  
		Size: 240.8 MB (240757890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403816a4e85c2caa9eaf51cb2e5d36b6e61c544f10ce1e38740b9b7f32a6348b`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 93.3 KB (93294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c943f59829fc320ee67929633a7a44b553a97b88bf8d8cd0df46d31e13f1c820`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
