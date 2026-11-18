## `openjdk:28-ea-24-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:fde3c2c2d6919a32fd9883e4563e62d5da3df0c8e75488bfd28d68c924e7316f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-24-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:c5566494653dbb31071a4148a07a23dd1729a23115bcaf69d9f42439f8da2996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329144930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:111323cf579bd6c541d7717a303cfaa8c6651fe5ccac0d450d99ba8bac9f2034`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:18 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:44:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 		dejavu-sans-fonts 	; 	microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:44:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Wed, 18 Nov 2026 21:44:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:17 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:17fdda5865945ad59a7751aa7bc27fb5b00cdd001a9f32c7bbd268f69383ec2c`  
		Last Modified: Tue, 27 Oct 2026 23:05:28 GMT  
		Size: 44.9 MB (44850706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ac3941e4ce4064a48655b4611409e5eef204416677e3bf2e4e7c30765487f4`  
		Last Modified: Wed, 18 Nov 2026 21:44:40 GMT  
		Size: 39.9 MB (39857268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790e74fdeaa13de8ef52e52f2505553d8a94dc95c1c3b8afdba46f918724490d`  
		Last Modified: Wed, 18 Nov 2026 21:44:44 GMT  
		Size: 244.4 MB (244436956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-24-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f12d8b012f840fc22ba8aa22c2f925f86ef77d4cf04e8a0407b7816961724e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff65646e2585ab7fadf4691650dc36d1bd5a83135c04f9a3a12a077a3ccbd1cf`

```dockerfile
```

-	Layers:
	-	`sha256:f5abe5e2efe9656cb0ee98055c58ea854cafb2318da74c7193556d9ca17dbb9a`  
		Last Modified: Wed, 18 Nov 2026 21:44:38 GMT  
		Size: 2.4 MB (2373898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d63071d68da32c9dc98fee9e2ba18e86c5aee373d5e22de017abd35cead70989`  
		Last Modified: Wed, 18 Nov 2026 21:44:38 GMT  
		Size: 18.5 KB (18463 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-24-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ca6a1f6b01d21b17384f9c325384289e6697394340a039cb87a60ec4de4738e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325681231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52a18fd25b4ca0c58aad8c1f092b4b07ff99cb298019715f37eea37155e21eb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:05 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:05 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:44:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 		dejavu-sans-fonts 	; 	microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:44:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Wed, 18 Nov 2026 21:44:20 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:44:20 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:44:20 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 21:44:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-x64_bin.tar.gz'; 			downloadSha256='5a03a3c06fcc4545132b530df7c81bc7828cf808eb34156b882240ae98d343e1'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/24/GPL/openjdk-28-ea+24_linux-aarch64_bin.tar.gz'; 			downloadSha256='f68b14f12467ccf66f16b2d1300243be561f5b6da6c2e31effaf9db5d1c49af4'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 18 Nov 2026 21:44:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:780517ec6f7d93388e06baaf239372099fd57d81606566b89316e484616f1167`  
		Last Modified: Tue, 27 Oct 2026 23:05:15 GMT  
		Size: 43.3 MB (43305296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9f0d93da5e6f787a30308469be3483c5e448b84480679d624781a85c0c5c2b`  
		Last Modified: Wed, 18 Nov 2026 21:44:46 GMT  
		Size: 39.9 MB (39905525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68aa643f9b1fce59c415350c58d420ade9872738b236d50594da817526815b98`  
		Last Modified: Wed, 18 Nov 2026 21:44:49 GMT  
		Size: 242.5 MB (242470410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-24-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:ba4e9c97f654e8fdc28c5ee68d5a27c2967d4e756afb37297e3e435d0d1ca677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a99412b0432f8c15b0831f2432dc85b0a79eedbdfa70ff0bd1dec2402228118`

```dockerfile
```

-	Layers:
	-	`sha256:84f13835e335d71696035fe61ea60e36db19541f48d791d7351b35d1abc1f7df`  
		Last Modified: Wed, 18 Nov 2026 21:44:44 GMT  
		Size: 2.4 MB (2373426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f47a4f89451ca81eef5ad445dabf48205fd985549f61f80069a738b131436d2`  
		Last Modified: Wed, 18 Nov 2026 21:44:44 GMT  
		Size: 18.7 KB (18678 bytes)  
		MIME: application/vnd.in-toto+json
