## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:061c7976a846e590e02eab8afa2df74a0a1e7cb22f83e39350a7f22a60a72937
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; amd64

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b19d3cd96a9b1be71027c26c69541f88a127ca1458276301afaaea4fbc873e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296937390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b508a180958aa28d2a5bf100c513e0e0e8417287b40c45a96f8cf7ea2e02172`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:53:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:53:34 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:10:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:10:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:10:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:10:10 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:10:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454a6516edd6cce309c4a99668a28857653e2f7e8f3e3cb3e0a1986b0010acfd`  
		Last Modified: Sat, 17 Oct 2026 05:58:23 GMT  
		Size: 158.3 MB (158282647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb55e473f12329fd29381cb5cb68118724aca658c87de7903d684a861c211f5b`  
		Last Modified: Sat, 17 Oct 2026 06:11:20 GMT  
		Size: 86.3 MB (86290964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebe1a491d7a438d4d31ea3a031440bcef247af40c95c5b0877366044ac64799`  
		Last Modified: Sat, 17 Oct 2026 06:11:17 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2671e8033cff74e0bdc787e37efb5c776deebb1bfb75c4b89d69be27801b3881`  
		Last Modified: Sat, 17 Oct 2026 06:11:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9bbb7d19869c767c68ddad4ce002fcdd3e25c4e443ff72941f51779d674ee4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058cf11158cf92966f98e96e2ba640d491a24931559f2ce72ffd1bfce1ebadbc`

```dockerfile
```

-	Layers:
	-	`sha256:7a724a92fbf680eca886a97cd297fd21e52ab400c81447b91df54f3440a11ca9`  
		Last Modified: Sat, 17 Oct 2026 06:11:18 GMT  
		Size: 7.4 MB (7388402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a70bc7b8db904645dc2220d87d768d166c350bb94813bfe6528f8a2d222a6c`  
		Last Modified: Sat, 17 Oct 2026 06:11:17 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
