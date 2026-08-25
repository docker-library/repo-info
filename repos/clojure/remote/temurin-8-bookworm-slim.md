## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:794b14ac9fe55493e0da7f14630274c722a813e78a72c66f423e816b600188e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bf1e0f23a72cbaf7a443cb3fb4b4701f77f39213e6a231fa2262ac9c9562323b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150079678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4ff1c43582796b3051c35808b3d371702e528222c0fb5ceb2955a1ec01764c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:24:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:24:39 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:24:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:24:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:24:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be602cab9a8bf4144769f18a4cb8bb2c9db8ebc1cd1fe2d38fb2faaab4133581`  
		Last Modified: Tue, 25 Aug 2026 01:25:10 GMT  
		Size: 55.2 MB (55164381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163b63b932da50a957c3b0f8c28725f42c2a536541bcecec3d2d2d960025d156`  
		Last Modified: Tue, 25 Aug 2026 01:25:11 GMT  
		Size: 66.7 MB (66681996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcace9dd43772accf6d3d6a2669689141deb3c7247d0aefd66731a46bf2a1ef1`  
		Last Modified: Tue, 25 Aug 2026 01:25:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b191829dc317ffb410825021b078d05a350d77d02ee2eaa5363129718a81c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1891a5304a5e789ccbbaa2960fed9b4ac50a46783af2c368433e4abc0b65f1c`

```dockerfile
```

-	Layers:
	-	`sha256:4baca615e1a0f1450532ea74b412dd7c425a4e20c2d1b96a5552dc5ae532c6bd`  
		Last Modified: Tue, 25 Aug 2026 01:25:08 GMT  
		Size: 5.2 MB (5239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6732a1f0df0fe295561d4cb6c9f1788722d8153e76669b46534d166b1ef8b42`  
		Last Modified: Tue, 25 Aug 2026 01:25:08 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4aa3ca33d397b6b2697e3c38d0d99b419311b09365e68809f6d9271cf7466d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149049815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fbd8fc8b551fa70412bcb8d1992e64f8cb1d8ccc42071883f1ac3df921b20e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:28:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:28:56 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda73df4b610a18abedd3305d0d068801223a241c5c59ac65596c432224c522c`  
		Last Modified: Tue, 25 Aug 2026 01:29:27 GMT  
		Size: 54.3 MB (54262768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6c32324655a71c9270b796b68a9335039293653fef6cdf4c55c0c4bc0de31f`  
		Last Modified: Tue, 25 Aug 2026 01:29:27 GMT  
		Size: 66.7 MB (66669111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50421e75a5320df6f85f7b1067d9041a67d93a26a26a9af54b2b666a09deb79`  
		Last Modified: Tue, 25 Aug 2026 01:29:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1906ed562fb6b2d024baf494d5756fbb773a69331f1bc77520e0bcd3e9e576c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed9b9f74e9734921b031aee77bf9f8dcb092403bc1ec7fba5e05d2eac29ac5a`

```dockerfile
```

-	Layers:
	-	`sha256:441df0928116b914814978a77fdafe2150aa9dc5149f5c7d92bedd3f2187ca62`  
		Last Modified: Tue, 25 Aug 2026 01:29:25 GMT  
		Size: 5.2 MB (5246059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b09d3aa9836262620cfae7120f2049133b2361a677ab66ab283385a87e2f9823`  
		Last Modified: Tue, 25 Aug 2026 01:29:24 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d0000d53ab30e39dc6f2854cad3574c280f3f066fbdb604b4fb6410adc4f3cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157244821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cce73cd442c5384398496c368ec17821cd372499af7478a46ad69bad6d1ab33`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:02:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:02:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:02:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:02:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:02:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:02:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:02:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:02:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a879e99e15f173a3e4a91bdb170c33ae98e97f003c095d743219d20e50b5b7`  
		Last Modified: Tue, 25 Aug 2026 08:03:24 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957800c9641bd62d56dac21ca953d6b0dbab253367c8106d6bcfe930643eb36`  
		Last Modified: Tue, 25 Aug 2026 08:03:24 GMT  
		Size: 72.5 MB (72497040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2b77a1a103b58b578d33cd3328d22337c2304c9101df5d629dab2250c5d53f`  
		Last Modified: Tue, 25 Aug 2026 08:03:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0c2ff182877b2f5a9426d046671b86d3e2d89821a8540a51b22a0739d76dd526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c0b2b5df6dc36fe723e5e86433ed9d44476f14768c862e80f5ebb0631ee33b`

```dockerfile
```

-	Layers:
	-	`sha256:0a258b76ba08f290ee8ac511f7fb4b4773b5f93f1aaf7b3c86dc41bc1d996d81`  
		Last Modified: Tue, 25 Aug 2026 08:03:21 GMT  
		Size: 5.2 MB (5245351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abcf868df89e215fd17e8b43b7bc1331ba717f1cdedc40e4c23ecbf5e35d7488`  
		Last Modified: Tue, 25 Aug 2026 08:03:21 GMT  
		Size: 14.4 KB (14449 bytes)  
		MIME: application/vnd.in-toto+json
