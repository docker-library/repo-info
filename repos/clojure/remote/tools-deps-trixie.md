## `clojure:tools-deps-trixie`

```console
$ docker pull clojure@sha256:72740c4152db2b1a35905b304ea60f4c48d35a26bdd0ddfa5803995536c6a9b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d8014b9c731a7e3aa8f10cc22024b22530633e2baf14b185e53ec7e606da71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224596408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb11be166d90f6345f7d716464c66a41d1ac12e0a4f68ad772cad0018c54aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:14:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c1670f4cfec9e2b954ee3779007f104ae749385b1039f7506e86810c82d64f`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 92.6 MB (92618036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f95582fa27c997d0f30ff58845e0b6529b6be4d9997c46f7e70ad999fb1101`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 82.6 MB (82569436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680247f7c851d6c6c735cd2327da2be1d260c87345c9d99324691f1e8f0d6374`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd524ba6ccf7a6556bfaed7844cd14781e467df761dd2678bc208da0f7699cb`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5ae8a33f76fa81b4b0312730a849de20a40f4a5f70b8b9dd4f6cb3f784a3eea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b90b94af5782c89feb994f335dc041915516c3b161008e04bab27f0a553a25`

```dockerfile
```

-	Layers:
	-	`sha256:b193578bd3d247ed7d0106c0de5717d726f32c8bee04048f183ea1ee812a4274`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 7.4 MB (7444831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11133ec9c5e06983d4ef6a37e438014725f021a2c930fba0ad828cecc0a38b45`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4f6ddf42e152db80da7e5185bd931b61a3d280cd0bfde6019bd08aa9b63269e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dea2dd6c5a795f08cc987efd8fc448ebd08424bff01100368d1b71fc442f3c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4063e86b240c7236d736aeefe4157d360e764059dda38c2a5c823f68d7d214c1`  
		Last Modified: Wed, 28 Oct 2026 02:22:34 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d043ba0f6c34dfa4c1c6472a644e4524b890c4c054ead7eea69eaaabc8a56805`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 82.4 MB (82392848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76f6eeae8151b174521e840f9281a777f6cfcd6e5920d0c7623e5c6d627bfd3`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9813e5d4ddb8754ffb0c064a8822d0b5876f94b7e2945322fe8503a6997632b1`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79bbd4d0fdc5b9dab5301817be89b22c6d3540c859a0b0485df517a673a04b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55015ce350f0f16cdc4fa7a6f16aaf99c281704418a22923b56aa6cc85aaa845`

```dockerfile
```

-	Layers:
	-	`sha256:c01973943017de462a0ab8d1c6f12a529d007920774141caa891ab0dba6ce4f5`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 7.5 MB (7451245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f53a33887382639b2a121ae92385b0b41ee9b62643d8e01cecfed661b46c03a`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:931da6d40b7d0e4be94e2e2e6c3776cfaf1ae418fee3d6b6cf0be1a83aba4e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232462174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aa9262eebc3dee4f19aa9d3c5e15b4a26c9f81878429b3c7cb0edb070bdf6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:50:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:50:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:50:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:50:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:00:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048e1f0e41557690eae11af5f83bc54103283e7cb6f701fe4a358768b52b4bda`  
		Last Modified: Wed, 21 Oct 2026 10:54:40 GMT  
		Size: 91.3 MB (91256233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81acf38de524823f4f1a2e811aa33f40879a0e9fbfd927cefe22896ca83418dc`  
		Last Modified: Wed, 21 Oct 2026 11:01:00 GMT  
		Size: 88.0 MB (87997319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb854ee15f7f20c2a01c3aa03e93626a8066092c16281c9ee58131d293edc0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697ba6dd5aa59afe6defb4461b01fb74bba1ede457a08bc1dd0ea1a0bb12f5c0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ebfb1086a011cbe5799161c637c232126b097cdd9296113cae9b510d4418b322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba721f9824d9c8e21b1e755690c3cefb883727682da79424bf61d83ef71981ec`

```dockerfile
```

-	Layers:
	-	`sha256:f785e704dec3013763677a00579b948d20f97b3504da217114d452dfce93a950`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 7.4 MB (7433350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79030b9efd73f35b1c8d1fd6b23ca0cefc733b5eab82261306e8f2ffd849ba9a`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
