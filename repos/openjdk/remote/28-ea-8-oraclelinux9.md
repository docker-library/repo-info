## `openjdk:28-ea-8-oraclelinux9`

```console
$ docker pull openjdk@sha256:654b2417c438dcbd3d28d80352f94eecb07a3eb20b69f0e423a696cde366968f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-8-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:f5baeb7a775f8383986cec93391e39ee325b5414ea4387297f45650e8d813e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313738980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cef9a0bc8b40b6f66c19f0c005229b1fffff16965df5c21770e13df55dc9076`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:09:14 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:09:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:09:22 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:22 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:22 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:22 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad4ee1ca20393331116a914430657c968a8021299b2e4a3c118cf263e06e89e`  
		Last Modified: Mon, 27 Jul 2026 22:09:44 GMT  
		Size: 38.3 MB (38283281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7c8460527aa30e4194a2b1ef5318525650eab0c5540558b66a19323ecb8351`  
		Last Modified: Mon, 27 Jul 2026 22:09:47 GMT  
		Size: 227.5 MB (227527947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:86683f7dc9cc05c2cf3fe52f30ea8d8c98b678afe80345ed5139efdf2da948c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df54f8c94e8080320e94d519cdfe2ae27423e5e42ff24a436625233dcf832ca`

```dockerfile
```

-	Layers:
	-	`sha256:f431157e33b89944e1ce61123a90ce01dc60480d16ad568dc8beab760a4247a4`  
		Last Modified: Mon, 27 Jul 2026 22:09:42 GMT  
		Size: 3.7 MB (3652829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40c512f03de337943f730b17cbca45182fda8a2d6b53a2a018c754fc959ca036`  
		Last Modified: Mon, 27 Jul 2026 22:09:42 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:eb376c34a2becdf3428de0cbb40042516d632659bbff861c0cddfb711ff8b8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.8 MB (310753993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89e6dc16d5906e121dccae316a568a16fbe2835223918850b8990574de7cbf5`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:09:15 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 27 Jul 2026 22:09:15 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:15 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 22:09:15 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 22:09:15 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-x64_bin.tar.gz'; 			downloadSha256='0c37484b9bf3ce38623554e745b5cdc6ca63fada65ff05f5501d2e2bd0d8537c'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/8/GPL/openjdk-28-ea+8_linux-aarch64_bin.tar.gz'; 			downloadSha256='ef65a3451add63cf9a1a5c1c28b1e6655f94df9ecd2570b23323133521d4a6b2'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 27 Jul 2026 22:09:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce31122704011a8de30265553a7bbd7c8a71c25203f54493e9aba31e0a6d80`  
		Last Modified: Mon, 27 Jul 2026 22:07:50 GMT  
		Size: 38.7 MB (38685681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6656ead68811bd0c1531866a1a46fd4e23c77af34031f4d57a56c24774722a59`  
		Last Modified: Mon, 27 Jul 2026 22:09:40 GMT  
		Size: 225.6 MB (225590407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-8-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5b719697f253ae8b2f216dbf4a1495401ad67bf9b44f3a9752d39446fef83812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c30361ea6608869999c582541a779320f41c54537a8b63de6ae7eac0978e181`

```dockerfile
```

-	Layers:
	-	`sha256:74d10309f31c98ad3fec273c613f730735e0cef441b56972ffbee337da9763b2`  
		Last Modified: Mon, 27 Jul 2026 22:09:36 GMT  
		Size: 3.7 MB (3650439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7c05f81028920b1c3ff69ce7ea10929ebda3c15e4a57e6cd0e55226f3188bb`  
		Last Modified: Mon, 27 Jul 2026 22:09:36 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json
