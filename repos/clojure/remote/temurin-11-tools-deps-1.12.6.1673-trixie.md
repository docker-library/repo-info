## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:5462c4d93320a102b2fe334de34eb69df768bf4de5809051e3dc4c83dd9f8eaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:59e3497afa38544db1612a46b451e5fa07cec2fd2d09f924148379cead775fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277835065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604939145caa4c9543b7b260fdab78bb12cb51f3cea4d5a13091fbb4cbea1d04`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:15 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ab072497c9b872e32bc49350b8c9de918625670e8852c005f3b2d08d68ae71`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b5a1c960de234e04cd43d8afff2174fed34986fb0fea08a7464960eac1c0cf`  
		Last Modified: Sat, 17 Oct 2026 01:48:55 GMT  
		Size: 82.6 MB (82576701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503db3b5a51fb22f043d359765abe5138ca48b7a445e67460593a2c306f86c50`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d160050575ac8b7371f20b802bed504f125eca261da24dd4e65c8adb67e28f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee3370a46ad7ea3f98bfd06ac2f0c18a59a704886b9ac14e67b81c3596beca`

```dockerfile
```

-	Layers:
	-	`sha256:1c2f5dcb7fd5a86012bbc9ffc3a8ea6ca4e7e5b99109aa73efde983375e465de`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 7.5 MB (7498336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d503504055ba5b47db7182f7020c037f9ec2cf926517fa4a3e574092bef35a6`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4839dfa8b5e9dd4d803e8e15e71ef37406ecb9cf2719aa6f572353591fa83c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274734289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3658783391a0848a7404ec21eb32ee28cfe90c82f48f51acd2c928a87ba977`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:13 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86a37d18c3a1c51209cba89fbfe0b105c92492477c5f926c3e20577f874e998`  
		Last Modified: Sat, 17 Oct 2026 01:48:57 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce100d369ec65d6d6a688e1f368c41ced324ba64fa7e0a1c9f04bc168b149d21`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 82.4 MB (82395963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b991712be7f06ac5196e27478ba56ba946347b384367d9f1284a99d22b1f300`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0ba5a26e5d3cd61fec0921fffabc1541c277fe7bd3982aae69e590d7b226eb25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334e9355c1e97290d6709713b0ab2ce7c48fdff4ab779e8cb23d533fb5512c73`

```dockerfile
```

-	Layers:
	-	`sha256:7247a9ad81a0ac9fc9f3213e9c9b593bff0b3ffd4fb52035b20ed5c34b7d06af`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 7.5 MB (7505347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e45779e74de247be3e56724c7d998f83b50ff94e98b2811422d7abf891c7729`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:865988995655bf059f0f2997e0808e5e6d94d7af654a856bc25be5279456aade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274298203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa3180f6f436f321bffd075d9d5c7443f1d56053f980680f67d57ac57c36382`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:23:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:23:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:23:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:23:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:23:57 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:33:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:33:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:33:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd40d33b78e6e0d28cec5774bf2db0a9378fd14854631e71320828086e27c35`  
		Last Modified: Sat, 17 Oct 2026 05:27:56 GMT  
		Size: 133.1 MB (133095149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43e6d373578ca65fc87036aac16b39de91d1e4e049f86a91beeab18359b34a6`  
		Last Modified: Sat, 17 Oct 2026 05:33:48 GMT  
		Size: 88.0 MB (87995287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8a2d3ccefb89c4387b702b8c6fe9c1f5fe3fffb62934a4d26d839de5176b98`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:407d527f8de5dc4f2b65c01d6c455757706668937feb30fa6e39ca2bd22ba738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4011441b185cf4124a100d0d44f857d99dde347aaff19cf7c61608931722dafd`

```dockerfile
```

-	Layers:
	-	`sha256:73cb4795350d39ab51062628b19472cc7f2f9a3c73d6c664661e4d302b14e4f7`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47fec311fa62df84a7f169541a27ebeb66783ad87aef49868c1ee4bc66e72dc1`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
