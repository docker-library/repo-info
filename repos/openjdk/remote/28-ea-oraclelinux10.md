## `openjdk:28-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:4365230d9b5144791f89f69473f78ffaac63daa6e1124fbf77702c334b62caf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:2f365c13a214e5fa9aa51eedfe1f108186c78bce59e760fd284fba53bb4e4558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324195449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a54690523c579fb805e493b665596a645b6f72a039c33467d1bee5d5c8073b6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 18:17:15 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 18:17:15 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:32:30 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 18:32:41 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 11 Aug 2026 18:32:41 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 18:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 18:32:41 GMT
ENV JAVA_VERSION=28-ea+10
# Tue, 11 Aug 2026 18:32:41 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 18:32:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8869116c72eb0208bf65c15fb660ea2461928387f7c3b91735d8027eb2dd78af`  
		Last Modified: Tue, 11 Aug 2026 18:17:25 GMT  
		Size: 44.8 MB (44842311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bc317d76490acf5e0b4599ebddc1bceb9d7612ec676f742023df596bf56d58`  
		Last Modified: Tue, 11 Aug 2026 18:33:07 GMT  
		Size: 36.9 MB (36855456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5246f7b284e67b021b0bbc49c29ff2288ebfb50a13ecb58d1d303a29fbb4e55a`  
		Last Modified: Tue, 11 Aug 2026 18:33:11 GMT  
		Size: 242.5 MB (242497682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:f1b9c3ceb814278a55d39dfa17e064467ab9cdd66f4d59046521816595f145d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217b3f9166f1d495c199739558b91b84b77bb80bf67d973db845951b88c41e24`

```dockerfile
```

-	Layers:
	-	`sha256:31a7de2d24227d4d9370dda1a805538781accaad83f2a70ad00ae6e432b6f74b`  
		Last Modified: Tue, 11 Aug 2026 18:33:05 GMT  
		Size: 2.4 MB (2375954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a68269b078b969b3432281cb1825f6a870672835e06bac14af2b7258c26ed7c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:05 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ff479f59b1d0c1c38c951d0dec7b71560e8895b23c6af428c286f302bbb5ce9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320798400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40d9126983b70e5107fd41b7d3c830248306ed4dfbc660a9b446f6fcf3cf6d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 19:03:33 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 19:03:33 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:16:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 11 Aug 2026 19:16:21 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:16:21 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_VERSION=28-ea+10
# Tue, 11 Aug 2026 19:16:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-x64_bin.tar.gz'; 			downloadSha256='66bd0175520c0c0d45c725daaf542c168ac93dab2cc227935ee2f59cc4cc2bd9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/10/GPL/openjdk-28-ea+10_linux-aarch64_bin.tar.gz'; 			downloadSha256='93d9b80f351911f1dc4dd170974dae1484079f14f1a646eecb776c6bde6b495c'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75e2e264185d605b1e57b358d6b88ce16ac44eb08d2511cce63afbde52c76548`  
		Last Modified: Tue, 11 Aug 2026 19:03:43 GMT  
		Size: 43.3 MB (43301375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebf5b03c3101de9f255d984800f1b13514c1372006c588c92c32700cf4bc42b`  
		Last Modified: Tue, 11 Aug 2026 19:16:49 GMT  
		Size: 36.9 MB (36907784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a580ccf858c417288b1a44242777e68328c3380fb2bbf822c8d9276c33e00930`  
		Last Modified: Tue, 11 Aug 2026 19:16:57 GMT  
		Size: 240.6 MB (240589241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:ca05ec176213859f62c06b5f22b68e2fdf0edb23e9ad2220c6bbf63b62f3d228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e3d91f8db881792e1672c4033a4235c0027791d04010753265b4585c30bab5`

```dockerfile
```

-	Layers:
	-	`sha256:88f9aef321c5c6f211f9fc5ef6dfcf1f14ec82db43fa38b6614ea3f3791d96bf`  
		Last Modified: Tue, 11 Aug 2026 19:16:46 GMT  
		Size: 2.4 MB (2375482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce58a5fb2a618254a9dea796860a3aec53ed26b6654e7691cca8bf2078017f20`  
		Last Modified: Tue, 11 Aug 2026 19:16:46 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
