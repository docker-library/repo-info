## `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye`

```console
$ docker pull clojure@sha256:4f089e1d304f0fa7e79fdd910d7a560081edf1351ea90eea0236fa501aca269e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:3403f78c9a8060e0fffb03db1f80fea15a48522685a575d6b27e95d186555c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175485199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c864fa12f7e991272f13e4b3c9a61e85b465e60145cbb42c0d9f2ae46cedaaf9`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:47:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb42e7bbf0072083eb6b1f519744f19f377af915a8c57db15b741e2dd7f71bf`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 55.2 MB (55198702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28483af17255c68ea42dd6f4418ab5e15e603f3fcddba7264a2227ddd504a71b`  
		Last Modified: Thu, 02 Jul 2026 05:47:40 GMT  
		Size: 66.5 MB (66512842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32f19b888dc2d1f0d1653d8a66b45c299f09f5997bacaf7e695735ed894fc7a`  
		Last Modified: Thu, 02 Jul 2026 05:47:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0e2717a2a91a9283d312e05a8c1d50398b5826271ba576b7439d63ad652e1cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4172155176a9ec4338de5f2bdd4158ced1deef675eba5637c7a1a8ad58a9e1a`

```dockerfile
```

-	Layers:
	-	`sha256:1a9513375fb6a590e5709ea6d2f8d121a23099db5f70a2303fce55aca17c9e39`  
		Last Modified: Thu, 02 Jul 2026 05:47:38 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f206d0b4e6fb3dfdc0c3940f49b01450841bf712202d9436cd6d33f4cd14ecc`  
		Last Modified: Thu, 02 Jul 2026 05:47:37 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27c7d11a849990d93efafccd844085520807f2e0eb4d52587d9d531aa54ed17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173209130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bca97bd0ea87a14856b31bf371dfe1ef535df2f511ceb5dff13fa7602811f1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736e7be6eeb0af543f1c4ada2ab4d8016ddc2f47999b684bc8f487bc31dee0da`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 54.3 MB (54272903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac31af5c17a39fa64ac0a69607f6376c84e75d307dcda670908fa1be7c042d2`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 66.7 MB (66678362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1decdea6a3b619846ad70e7838b00e108439fedbee770f95128014679b1b6d`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:09a5fc62ec0adc7ea0d66ec564b286b13bd552014d028fa58a97a4c6b15be66c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5d99d1731ee4c9d4859ddc41a391cffe197d1b9f4d35b78b65b7bdfa5f4753`

```dockerfile
```

-	Layers:
	-	`sha256:bde308396daf796f8d7a0d3e731a4ca90181f781428b88bab438e091ab2c1015`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d51e0371d304f83f6b3ca764be6fffb5b2c0aac43f739cc6b36d19a58aba27b1`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
