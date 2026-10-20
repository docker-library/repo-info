## `openjdk:28-ea-20-oraclelinux9`

```console
$ docker pull openjdk@sha256:5e651761a7f381a7796687383427e3342785662bc6a38992c2ee17c69996e1ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:9872d4f57a42ce372fd40185ce1e4345427aca5ff7b72008bd737fe90268555e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.3 MB (328347931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2055ffa911fed50f8017a5c28b4809dab715e494f7e290682d5715497e40787d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:12:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:12:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 19 Oct 2026 22:12:44 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:12:44 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 22:12:44 GMT
ENV JAVA_VERSION=28-ea+20
# Mon, 19 Oct 2026 22:12:44 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 19 Oct 2026 22:12:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db7f001528b8a50a3f70359185553e5f82a5788d35bf4cc0973eddb88129852`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 38.3 MB (38264254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c4cc0d6743e038d29755e47b588a5481403e4147916454304c963b789edce5`  
		Last Modified: Mon, 19 Oct 2026 22:13:15 GMT  
		Size: 242.8 MB (242834509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:4b8e55886355fd2732330406b513de883c6f97859987e671c3230e92e4a6fbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf30af22791797e336a557a1089c736ffb6980d36591a86ed87c421aa02f6629`

```dockerfile
```

-	Layers:
	-	`sha256:66e2580fe8c8cc522d31887fd906da161c921f53ad023cde2adcdf41a73c5aa1`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 3.7 MB (3656672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6ac53b2c653c9096baa7830f7cf3d81c6a0c014630d42d0b887999a5c673020`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:18aa1a70adaf015b0fc5207ca76a955db2af170791f8abffde6aa046cd5518f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325325658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea891da8ae16f113c033dfd6800dc2f58ab8713105eb6dafdaeccba338427099`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:12:01 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:12:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 19 Oct 2026 22:12:11 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:12:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 22:12:11 GMT
ENV JAVA_VERSION=28-ea+20
# Mon, 19 Oct 2026 22:12:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 19 Oct 2026 22:12:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11816e2f97d17c1bb955fc5784768a303916c6ef3da82bfe9e046a90d49eed00`  
		Last Modified: Mon, 19 Oct 2026 22:12:37 GMT  
		Size: 38.7 MB (38661928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb9290952b670fd629fdacab75cf87900a4fd5fcfe81609ad09417a163c7953`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 240.9 MB (240863545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:aadba5bc73fb4322922363d2914f7d8d8f98536fc0ef64d9f8f23695e4979d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8979eb4e53156639c162370f02436a5aa05302f6a906b0d5714eda322812b0d2`

```dockerfile
```

-	Layers:
	-	`sha256:9784c7c0aa541403c012c5e16873a55fc07acb537211682bde601b99a7408447`  
		Last Modified: Mon, 19 Oct 2026 22:12:35 GMT  
		Size: 3.7 MB (3654282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69fc2f4d73511b3947ab1af341b6cc6eff318910821afbded2151cc302f60a33`  
		Last Modified: Mon, 19 Oct 2026 22:12:35 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
