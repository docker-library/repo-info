## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:7f34852f68582f230c4d0b262a8e28cc26ba1c08b2de87d69145248b7112162c
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
$ docker pull clojure@sha256:cacf7f06f18bdf3e458c92c95903b20095a44226347cbb8801dc29cf8ec135f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266354341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39746957ad29c21bb3999f7dcdd82d6f92b7aaf005b1732531ec838485c5a7f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:39:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:48:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:48:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:48:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:48:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:48:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c71451c8a0ab7adac8e6a3f1288ca59d6d2306d4dd9a24899545c84926ac3`  
		Last Modified: Wed, 21 Oct 2026 10:44:56 GMT  
		Size: 158.3 MB (158282665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3da70ba03742a29e897062ed2f6e77e4b76722f3dddcc7301059921ec5beb1`  
		Last Modified: Wed, 21 Oct 2026 10:49:07 GMT  
		Size: 74.4 MB (74418696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5033db4353eed8cdf47616ed00c9df5d35cc11baca5c22e1067187e6f2c10e`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37db18995d6ff0fd8d2d119a78b825cf125c7a7d100b06fdf056eca32518e74d`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39f4d587f0d5f1a3a680337ae79709fb35f1c715caab3048af57b41f85fcae68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5284273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1c22252229e02349d52c1709edd0b0b7c8f1411a4e95bcd7d8e5d73c638179`

```dockerfile
```

-	Layers:
	-	`sha256:ec3ef73e32ab9d739ab9e45d35a70a227390dd19691faa724c958cf2278c3ffc`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 5.3 MB (5268260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ad696da45ced495c25e114022435b686d7dd9faa2faafa30dd4802efef3f7d7`  
		Last Modified: Wed, 21 Oct 2026 10:49:04 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
