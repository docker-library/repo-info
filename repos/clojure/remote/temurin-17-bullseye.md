## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:594794c120516f0520fb63418c42380ee029a4bc8c987edb00826760538cf4c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4704930771630c3a24b62183d4d3e89e063168765f500d3ff58a795ab86a3532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266192973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d222a30f401f0a067bbf37808798f9d7bcf2a9f733d87cef66403cf256b37c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:51:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:35 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:35 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f619170933ccc1e8b3d90247ba101ee91ec6b6bdb8aa9ea96dc5ba865ae9493c`  
		Last Modified: Thu, 02 Jul 2026 05:52:09 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49467f7ad892760e27cadffd0cbfe9041e399b67b476bf12e680929869f71e7`  
		Last Modified: Thu, 02 Jul 2026 05:52:07 GMT  
		Size: 66.5 MB (66512628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b403f51c66a084be4c9cbb6cf02530b2df5571ae126c3a9d8901d00f5e25f85d`  
		Last Modified: Thu, 02 Jul 2026 05:52:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf085110fe4c7b5e685f0f9fcfa7c5e3ae1dee89470c580e5c7af13a04597be`  
		Last Modified: Thu, 02 Jul 2026 05:52:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f113f75d27210c54c60a12a7ac7a700c0b799b2a17a179c733453eca0da15ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c7681749e70eb17a4343ffe4470f53db8347c7249586493117cbac00afa351`

```dockerfile
```

-	Layers:
	-	`sha256:58c5d53ea5f6a0d810d6a48157f97cfe6bd9839c73e1e65ea1e81ebae7c0f00e`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68d61c6f774b018c463eb9d358a5eb341534a1e6f16992d52ccff81fed5b8cfd`  
		Last Modified: Thu, 02 Jul 2026 05:52:04 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4636a1b2aa2ff968d86dc1f0f93ff7234fe52310e8503760789122dd41d2a0ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263659915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9454c53a5058aaabddcd41d6c3dc22118cabcfa20d9eec4ba55fe74dbe22ca3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:51:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:50 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:50 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721321705c309ba5e0dc066341bf338734399d5ee4c3d0b32df52a15c5fbb9c`  
		Last Modified: Thu, 02 Jul 2026 05:52:27 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e47b5e37cec5d61258b16ca0518fa96040223238e1e0c3ea69399c6b7ee892`  
		Last Modified: Thu, 02 Jul 2026 05:52:26 GMT  
		Size: 66.7 MB (66677357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0f71096ac5addebb7a18b30ff8a505eb17175fa0e6d47fabff1d23addee6ef`  
		Last Modified: Thu, 02 Jul 2026 05:52:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206870651b8229da5fa7c48a3d45f587a01b9c248ef7c8a6d90600e54323d4e8`  
		Last Modified: Thu, 02 Jul 2026 05:52:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0e74c02446b69cc1283f5fdd1f2a3f47750f765be9bbcf4a26b01574e16ebb9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04b3a38ff20cec72d1c9765ded9f92c2a51b9bf845a212b691d357cfae5b819`

```dockerfile
```

-	Layers:
	-	`sha256:32372f67559dc745778fe16649d8daacaa72656d59ab73bb2d6b23b2d7291822`  
		Last Modified: Thu, 02 Jul 2026 05:52:23 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:723b3b943aa0ef5e87ea44f2a4e94be57aa5b89fc07ed888798fe09e5cb47b1c`  
		Last Modified: Thu, 02 Jul 2026 05:52:22 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
