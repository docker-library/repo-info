## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:35c0d08bd47ad8451b79ff0c7655f550adc9899111ab7ee20c91d8ed89b37348
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:267b30d151441eec49db138cedd3450553d5820d16c6701ce1417a968c820b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292b1c0243e23ee0417e7cc1512b48698928490dc4b94ab50e5e0e5e7bdb73bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:19:00 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:19:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:19:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70df2d71b54b6a4f0d7b683afea1bd6247d93472c38511143a033cfba14558ff`  
		Last Modified: Wed, 21 Oct 2026 01:19:37 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271ebad2b50d7b786b3b8c2ec4a8fd6740bd229bf5bf3afd716a5adecabe19ab`  
		Last Modified: Wed, 21 Oct 2026 01:19:35 GMT  
		Size: 78.0 MB (78000300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6173e656a314c9f243f967c306078fd99a945f9d04fb1305127713ecd85e439b`  
		Last Modified: Wed, 21 Oct 2026 01:19:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d9ac52c7b47950c610607e1dba8c59e3fe479719cd9c8bd644f9f6a2750d72`  
		Last Modified: Wed, 21 Oct 2026 01:19:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ea9b114f84e6ab08322295652d5f815154add76bbfca2637f065c5a19398ba72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d48415f47607f5003e19c6069b8bd1ed7f04acaba8d198ff072f86c98cf5740`

```dockerfile
```

-	Layers:
	-	`sha256:2b8ca387c60a3969d2a38cabf7cc8d441baf0860d3133044447a046031c0725d`  
		Last Modified: Wed, 21 Oct 2026 01:19:32 GMT  
		Size: 7.4 MB (7381881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71297fc03a513918125dbeed73663af59656f0d8de39b983be80c84527e2b38a`  
		Last Modified: Wed, 21 Oct 2026 01:19:32 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:758af9d52da4cf4414956065c98190730276ec85e17701ec794fb436805c5bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90bf2cd1fd73499ac6f1366738727439e9fc2ed03beac91a8aa4e0c0e562d53d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:25:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:25:06 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:25:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:25:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c18cca8da8a914720ffebe65a0345e8bc6de452931f74a4e065e1738cc82e91`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdca851a323569b826ab6e527bc879cb83df436ece89bf42a2149e7de3091d5`  
		Last Modified: Wed, 21 Oct 2026 01:25:45 GMT  
		Size: 78.0 MB (77984063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fee6c291f1534ec0ef1ae4764f841030c2947573792d27eac65c6d0a418b75f`  
		Last Modified: Wed, 21 Oct 2026 01:25:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a36ed58cc71e92bf015a9d2df91d4edbf42a62ab28e6e6ca6130f854b11c878`  
		Last Modified: Wed, 21 Oct 2026 01:25:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:521d2517fada3595c911003b33afcf14df054ac2eabba5a34e9ad0ae53cd6474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7404426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6196b1282414390d5e914b03ffba5afba9ec73bf4d89817717ced2bb5046df3`

```dockerfile
```

-	Layers:
	-	`sha256:c37743f31cbf7cda9ffd03f921614faee58546b63fc3c24232dc216cc6fbeaa8`  
		Last Modified: Wed, 21 Oct 2026 01:25:42 GMT  
		Size: 7.4 MB (7387668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c81aa53939067dd87826c5a9e1f88005298fa1492b9ac319c448f11a925c094c`  
		Last Modified: Wed, 21 Oct 2026 01:25:42 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c7f1461a00f4429809a3d4ac07be404772ce376f28cf7546bb217c7d75ac1c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294485916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f77897ef6856f64fb6850b1dbe22e78e2421b57773d8f64a49c840b1800b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7675b7da5067325f47a5feb11bc6143edec79b9d681e957d6a821c89da8551f`  
		Last Modified: Wed, 21 Oct 2026 10:47:10 GMT  
		Size: 83.8 MB (83837475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1c9f971b3e1a3384a3713db44d3b44cf413c3d1d096035ea0a14cbca9471a`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d70a4f45ec15df8dcb304cf005a4919a7f6cca1735a5d462b533c8a8dfafd63`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:78af099058bc50145cc1e99678897f0796e6f071f2ee54eb4c6eefc9f08036a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3b26baec0fe6c3ddbc3a9aff46106023bed7ef2153789cccee9d788991830a`

```dockerfile
```

-	Layers:
	-	`sha256:b0714a76402bcdd1696cf406cec3e1ae84baf3b5d261fd1454a527782b5601c2`  
		Last Modified: Wed, 21 Oct 2026 10:47:08 GMT  
		Size: 7.4 MB (7387107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:202018c16e5c4432a88ffcacbc321ac5bc00326ab4e9b36d10f682c6402e1337`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json
