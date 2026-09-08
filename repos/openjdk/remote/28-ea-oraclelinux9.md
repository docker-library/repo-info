## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:3bdc2686e2d8c4bc6515ffd44e71c9f88e2c6d751514ee1f5b02c85b6a1f38ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:62ef4173bd5cc42c7e2d2945423fd6626dda8a19ec5d4974d7c43d3761d6da37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328770231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf56b514825d9540a8166a0fad4d5d1db34ca43ff3ad793522406d9597ca6795`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:19:28 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:38 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 08 Sep 2026 19:19:38 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:19:38 GMT
ENV JAVA_VERSION=28-ea+14
# Tue, 08 Sep 2026 19:19:38 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:19:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f3d73c03d500528f8d6386cdd42a478cec0676f385fd5e53108dd6445109fc`  
		Last Modified: Tue, 08 Sep 2026 19:20:03 GMT  
		Size: 38.3 MB (38286796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49fdd2b5572dad5114a1267304bc80a5716e403f40b745883b80d1336183270`  
		Last Modified: Tue, 08 Sep 2026 19:20:08 GMT  
		Size: 242.6 MB (242551855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:3f48d324e25103048ee0544d22eb0cb676c83aebb6de1893fa76d7763ce57f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c7d40d2ef4092ee56ac0937213119d5bd75d2839ba317df7fca3cd271d522b`

```dockerfile
```

-	Layers:
	-	`sha256:e8bc4c29c36c63e82cc1262bba6211caccfd1324c0d99ee25ed4ca96c4412f1b`  
		Last Modified: Tue, 08 Sep 2026 19:20:02 GMT  
		Size: 3.7 MB (3655997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf5f1dbd95f743d76a1150ef7182dacb7c10db6714f1f6c9324275d9febd7b7b`  
		Last Modified: Tue, 08 Sep 2026 19:20:01 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:20e729235d1a58ecfd8908fbf631b9ec75a066b606fca06df25b48d0c55389e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325788225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c751f3db9219476a71b434a27f52d62e5f1107698c148bc3861740d6777e3096`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:17:13 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:17:23 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 08 Sep 2026 19:17:23 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:17:23 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:17:23 GMT
ENV JAVA_VERSION=28-ea+14
# Tue, 08 Sep 2026 19:17:23 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:17:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b97004bc659e5c52411326670d75a1e9e875d2e00793c14bf44ddda3f948c2`  
		Last Modified: Tue, 08 Sep 2026 19:17:49 GMT  
		Size: 38.7 MB (38683271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea6030407f377b4b62adf425d117cbdd2d11ac96d96b4c4244956a6db2f4c7f`  
		Last Modified: Tue, 08 Sep 2026 19:17:52 GMT  
		Size: 240.6 MB (240627925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:70da453fa5d97023248122901507f0714b9ef0794597d4de44b6cbfc03f164ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2eeda3bd0046c643ea09a260802c0dc8ef4388f8d29a32926e27d2f97e9963`

```dockerfile
```

-	Layers:
	-	`sha256:8f1401b36c36f46645f997a6d0477fcb287dd5976c4f028535f841627eda044d`  
		Last Modified: Tue, 08 Sep 2026 19:17:47 GMT  
		Size: 3.7 MB (3653607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d21108b7ef6ced1dea90cf156f223167a8b5861f41042c35311b4e3a9518692`  
		Last Modified: Tue, 08 Sep 2026 19:17:46 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
