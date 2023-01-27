## `maven:3-openjdk-18`

```console
$ docker pull maven@sha256:f8aae873f0c0de9ed24b89dd1fd4a082bbcb37bcdd96c12328c4826f85508821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `maven:3-openjdk-18` - linux; amd64

```console
$ docker pull maven@sha256:21db636c6a337bb3d796a0220948fbc118199213dc369cd56fc5e4b48eb338fd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.8 MB (457825801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e378b2ec1ca3a243e691c3778df906216bb79f00bcff96f86177ac188d8734c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:30 GMT
ADD file:599abbad96e264361b1bc5a7643f88354e406a2a1f55256af8a67e5a71ac3044 in / 
# Tue, 17 Jan 2023 21:49:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:26:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:27:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-18
# Wed, 18 Jan 2023 04:27:49 GMT
ENV PATH=/usr/java/openjdk-18/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 04:27:49 GMT
ENV JAVA_VERSION=18.0.2.1
# Wed, 18 Jan 2023 04:27:59 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/GA/jdk18.0.2.1/db379da656dc47308e138f21b33976fa/1/GPL/openjdk-18.0.2.1_linux-x64_bin.tar.gz'; 			downloadSha256='3bfdb59fc38884672677cebca9a216902d87fe867563182ae8bc3373a65a2ebd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk18.0.2.1/db379da656dc47308e138f21b33976fa/1/GPL/openjdk-18.0.2.1_linux-aarch64_bin.tar.gz'; 			downloadSha256='79900237a5912045f8c9f1065b5204a474803cbbb4d075ab9620650fb75dfc1b'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Wed, 18 Jan 2023 04:28:00 GMT
CMD ["jshell"]
# Wed, 18 Jan 2023 05:11:05 GMT
RUN microdnf install findutils git
# Wed, 18 Jan 2023 05:11:06 GMT
ARG MAVEN_VERSION=3.8.7
# Wed, 18 Jan 2023 05:11:06 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Jan 2023 05:11:06 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Wed, 18 Jan 2023 05:11:06 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Wed, 18 Jan 2023 05:11:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 18 Jan 2023 05:11:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Jan 2023 05:11:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Jan 2023 05:11:13 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 18 Jan 2023 05:11:13 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 18 Jan 2023 05:11:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Jan 2023 05:11:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c57acc5afca507dabd7a22ed8ab1a978dad73d90dacad7b0b4668750f8fca64`  
		Last Modified: Tue, 17 Jan 2023 21:50:21 GMT  
		Size: 43.9 MB (43885845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8fb8780af51fbf2479bc74be4aef9eef6a67db84a17a1eadc0d9bb6464a16c`  
		Last Modified: Wed, 18 Jan 2023 04:31:02 GMT  
		Size: 12.3 MB (12251739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f16df76a511ee6084bfb0284aeafb3e7d5ebdb001a7a64aada0c6b6d590e09`  
		Last Modified: Wed, 18 Jan 2023 04:33:09 GMT  
		Size: 188.7 MB (188744830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a145d185c7786a4ae8315417bca7731b255e2f2b9693fff0bf5c25ab847baa`  
		Last Modified: Wed, 18 Jan 2023 05:13:26 GMT  
		Size: 204.6 MB (204591004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a185f8a1da509f6907be3e94410b101a10d2f33b5bcfebde16782792361ae1e`  
		Last Modified: Wed, 18 Jan 2023 05:13:11 GMT  
		Size: 8.4 MB (8351168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e282c56dc82230eef0559254d145d3110a1759f56ce327e232dba049cfab6858`  
		Last Modified: Wed, 18 Jan 2023 05:13:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6384b93c39f7c1108a8402407d1d40de049fbb5dee2f9d1da2a06ab105af57`  
		Last Modified: Wed, 18 Jan 2023 05:13:10 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-openjdk-18` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bedf09d9d583caa019f521c2b1555a2cd3947c6caa95214fbb3e9ad64c093354
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469371778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9971f99ac71fb1d5861027a1bd3edc4a9986d4a586674b61d457bf431157370`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jan 2023 22:11:15 GMT
ADD file:dc09c8b8bd2fd3e0439792a21b95984ec8104b2a384f5ea2ef173918c105da9c in / 
# Tue, 17 Jan 2023 22:11:15 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:00:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:01:26 GMT
ENV JAVA_HOME=/usr/java/openjdk-18
# Wed, 18 Jan 2023 04:01:26 GMT
ENV PATH=/usr/java/openjdk-18/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:01:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 04:01:26 GMT
ENV JAVA_VERSION=18.0.2.1
# Wed, 18 Jan 2023 04:01:35 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/GA/jdk18.0.2.1/db379da656dc47308e138f21b33976fa/1/GPL/openjdk-18.0.2.1_linux-x64_bin.tar.gz'; 			downloadSha256='3bfdb59fc38884672677cebca9a216902d87fe867563182ae8bc3373a65a2ebd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk18.0.2.1/db379da656dc47308e138f21b33976fa/1/GPL/openjdk-18.0.2.1_linux-aarch64_bin.tar.gz'; 			downloadSha256='79900237a5912045f8c9f1065b5204a474803cbbb4d075ab9620650fb75dfc1b'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Wed, 18 Jan 2023 04:01:36 GMT
CMD ["jshell"]
# Wed, 18 Jan 2023 04:41:07 GMT
RUN microdnf install findutils git
# Wed, 18 Jan 2023 04:41:09 GMT
ARG MAVEN_VERSION=3.8.7
# Wed, 18 Jan 2023 04:41:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Jan 2023 04:41:09 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Wed, 18 Jan 2023 04:41:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Wed, 18 Jan 2023 04:41:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 18 Jan 2023 04:41:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Jan 2023 04:41:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Jan 2023 04:41:15 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 18 Jan 2023 04:41:15 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 18 Jan 2023 04:41:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Jan 2023 04:41:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:002eb071499b5ede36f617906154b8933e643acc41d2993585876528939fb80f`  
		Last Modified: Tue, 17 Jan 2023 22:11:59 GMT  
		Size: 42.8 MB (42775871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceecd3085b25f549de68213105de48a98b0db45a66e38d315c34ae860197f1a`  
		Last Modified: Wed, 18 Jan 2023 04:04:31 GMT  
		Size: 13.1 MB (13068620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ff0f29145dfde952e61484d317dc0f46cf80cd12a29df3b1e1271fb181065`  
		Last Modified: Wed, 18 Jan 2023 04:06:33 GMT  
		Size: 187.7 MB (187659391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b0fffb847dac7f95aab93456a3ac9b50309eae87099ca85725998832f0d833`  
		Last Modified: Wed, 18 Jan 2023 04:42:51 GMT  
		Size: 217.5 MB (217515518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c489c9a67603608bb829ac596a7f203b49719a64a4e513022208ccdf54a56c5`  
		Last Modified: Wed, 18 Jan 2023 04:42:39 GMT  
		Size: 8.4 MB (8351161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65f9295657b5892362cdf40857adc0747dacf766c9e20d7cb7893bec63aadde`  
		Last Modified: Wed, 18 Jan 2023 04:42:39 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d52d23e94422ff46c66018a619b7744517146cbc6d195b00a94f5ba16b5651`  
		Last Modified: Wed, 18 Jan 2023 04:42:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
