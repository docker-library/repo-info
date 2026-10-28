## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:f2a814025c3afc905854fabb196547376d104204b56ba87b4284238f2de6d782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:548e0b94fd8bbef52732e4975f5a186776a1e6ec8ed97be3d5721117b946f748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256963054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c145540e4942eea2040ec4ec70a08bf8ac2771ab255d7b01911af120d0bea9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:13:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:13:15 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:13:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:13:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bc2353261fdc11af40c5787a6c0a5ad6236b32a95d23eb4a9ed126f1c117b1`  
		Last Modified: Wed, 28 Oct 2026 02:13:58 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623166e4bd8edb9e84abff43b4ea0ada691317098312482381bde034183ec693`  
		Last Modified: Wed, 28 Oct 2026 02:13:57 GMT  
		Size: 69.0 MB (68989299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5b17dff0b5facf04580d21d2c75ff6db86aef9cfe4fa9661a10e2293183c78`  
		Last Modified: Wed, 28 Oct 2026 02:13:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a0eca26336778fc114709910290dc3def2d3946df7bcc96014798c88c63fcc`  
		Last Modified: Wed, 28 Oct 2026 02:13:53 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a88d38f4110402f4495e46e77c5f184988c85ff3e01ad8e5046262867075b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00193e719b29209d6d5e9f35ea71914c06ddee1a50a128e99eea9bc0c7e65434`

```dockerfile
```

-	Layers:
	-	`sha256:74a9d87afcdfcc2bb826a7639b8d5e122f30a091a591ab13a02d59f565787a00`  
		Last Modified: Wed, 28 Oct 2026 02:13:54 GMT  
		Size: 5.3 MB (5263917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49030841739ed1bd032958801bf2bbdd563cba12d2605f5d938974dd49a7b061`  
		Last Modified: Wed, 28 Oct 2026 02:13:53 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:92c3c2b7f9555236e49e3bea02e85f74b7494747e8ba1e73df967748159ef69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255420299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1404f8084c3947f17810915ef1a6a703559b24b79a9e89d6df30f88c5caa42`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57f89cedf7794e059288e492b886a2057af24891a373b3a9760fd55dc9c59d8`  
		Last Modified: Wed, 28 Oct 2026 02:21:12 GMT  
		Size: 156.4 MB (156400653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d584b73fc83c5b4281ad077d0f9235425ba8df9617b69f8348ebd4f9276af09`  
		Last Modified: Wed, 28 Oct 2026 02:21:11 GMT  
		Size: 68.8 MB (68805106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6217df89518d2d0d87911df14cb31efafe5614d2c744a65717745070cd237a81`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70144742c8214c296135b1333a50aaaa680c9e9f24a94736ba021bddf1e537a3`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:442334162b8a9640cf8561b9111128321e9970866657a19d29c15da70ecd60b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c7e5487d60936c037b4b5b94105ee75d6c558db5a923438051c55d8f908cd`

```dockerfile
```

-	Layers:
	-	`sha256:c942328d0629f2c2a483b72f7d02274d8d9d4dd84f72db369633c11dcb3b83b5`  
		Last Modified: Wed, 28 Oct 2026 02:21:08 GMT  
		Size: 5.3 MB (5269678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:264741b9766ac69aa7e194875a98ec89c10764247e74ba16df1ccb61638da78a`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aed2e0d3b232899842ac5324585e67cf0e90af8925124c86ca28d7513eeaad67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266368418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f254d85e0af82a51ecd53ecf4a7a8c7477e338462bcc3cc6e045b445c4041df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:06:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:06:36 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:14:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:14:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:14:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:14:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:14:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b0cbb2f460ee06d62a8a618c39ccba555be71a056744830d2dee60ef7ca576`  
		Last Modified: Wed, 28 Oct 2026 10:11:12 GMT  
		Size: 158.3 MB (158282631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749e0caaf1031dff78555dcd674e96efde7c788ad7fd5346dc1796efdbd55fb`  
		Last Modified: Wed, 28 Oct 2026 10:15:03 GMT  
		Size: 74.4 MB (74418480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96708f39658b8d9da868ad2b1d9de3a03a5b9995136a4d22439461f474d2413`  
		Last Modified: Wed, 28 Oct 2026 10:15:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e959d5714361a5344fcfc7e7f26f19f0f4d34082aff13c2b6c196bfd7754d430`  
		Last Modified: Wed, 28 Oct 2026 10:15:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c8ff1071cb807774e3d5c2f7f02d5a297acc63cac781e16e75a6ec50cc276254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5284302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ed4e7596d5230d2ea02f95a1ee9c9c63fe704f4964fe751e5f11c28854739`

```dockerfile
```

-	Layers:
	-	`sha256:55142a7fd4689d0844bd95b744707bbed9338401fbf6212f94a32bb771464b96`  
		Last Modified: Wed, 28 Oct 2026 10:15:00 GMT  
		Size: 5.3 MB (5268288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b25bf6edce9c84861a95e700452d413e7c6c83ab30beeaec6d20b1d9f0eee8b6`  
		Last Modified: Wed, 28 Oct 2026 10:15:00 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
