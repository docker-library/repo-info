## `clojure:temurin-26-tools-deps`

```console
$ docker pull clojure@sha256:676dde56997ffda970c94d1e88ef4d91b3916467aaab2da6ccee64b8294d90f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:14ec5134c2e45c8be508de64aee1daed9f4df254f53d8c435ca1506ef74fb690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221083744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed3a3963ed0eca47c82883cb892ac7632b1411c5de6178ab57c2db87f49df32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:53:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:53:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:53:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:53:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:53:07 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:53:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:53:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f687b228e11576adb40c31fe54b427e2399b181c537cce4a35b047f4dc851aad`  
		Last Modified: Tue, 27 Oct 2026 00:53:43 GMT  
		Size: 94.6 MB (94563501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed87de9fc4f9ce12832e891cdaa5d22188ddf6b6c7629b54791c749d8eb413d`  
		Last Modified: Tue, 27 Oct 2026 00:53:43 GMT  
		Size: 78.0 MB (77997112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ffbc37e0a300f2d22da45ad0704307c944418f1872c0202176b07d842873880`  
		Last Modified: Tue, 27 Oct 2026 00:53:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1f5f12b33d0af9a94d6180d8dd22eb713f2ce6f7140b8e8feaf084fe174634`  
		Last Modified: Tue, 27 Oct 2026 00:53:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:9399865a54d16a93b53be12833908063ac1bfebd8cf3e00092b4f53d5b28fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7360755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63717ecd6517e4c3ec2cdc6cf3bbffe44394e79c635ffb05ea998ae7c12ea56a`

```dockerfile
```

-	Layers:
	-	`sha256:4ba03c023a8878ca023a7715e24d0c1266af66acc85ebfff622688af6c6f78af`  
		Last Modified: Tue, 27 Oct 2026 00:53:40 GMT  
		Size: 7.3 MB (7344146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7f9852a271b7de8132c16ca8f81d3cfda9e7219388c824e906e0315ff56e3da`  
		Last Modified: Tue, 27 Oct 2026 00:53:40 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b81c2778f13ea80e798829addae3d910f3d47994857fdac253a89702ce62b183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219939737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac60a869bd6090b6fd0c301b8017f7c35777b0e131746493cba90c83954c251`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:52:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:52:55 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:53:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:53:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd1541ef2ba77de13a3aecc43f91346aa0b5d9c77e6e4650e1eb72646ec59be`  
		Last Modified: Tue, 27 Oct 2026 00:53:35 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef4303abd4c2825c59d951c746ec5ce49f5ed28bd63b6dcdade1a5201d946cc`  
		Last Modified: Tue, 27 Oct 2026 00:53:34 GMT  
		Size: 78.0 MB (77991990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe65c53389c4de96a9a7143dd0b3e74ec8b5b909ea822b97d72be8f78311b144`  
		Last Modified: Tue, 27 Oct 2026 00:53:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78647d7b098a6c11952ff9e81d5b37c138c0f878c3a6285c2cb50d3125b916b`  
		Last Modified: Tue, 27 Oct 2026 00:53:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:2a77d23cd38acc0c9a840aaadf855c68f801fcc105107415657630ebb4a5f98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5c59f47e94413914e6590269224c60d39771733fb90b80d162388549eeee4d`

```dockerfile
```

-	Layers:
	-	`sha256:af24ed6011ce53572a6f416c9681557d0854474a635afa8385378e38daf257e5`  
		Last Modified: Tue, 27 Oct 2026 00:53:31 GMT  
		Size: 7.3 MB (7349930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:912006e4a768fbc022fd048a36d1eb453de959c6754dc4618cc6f1825dc3fd5c`  
		Last Modified: Tue, 27 Oct 2026 00:53:30 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:7e5c6df2576147250b02f04a942bf1eebcef5ab542cc5434e69cd1d7091203f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229553732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55c883075a0f885f4079dd59ef67ebd4521be9bbb1e8c48172e67e456926f60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:01:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:01:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:01:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:01:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:01:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:11:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:11:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:11:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf4557b0dd8e520302a63b87bfc1c5ff2dd29442ad047383a634b6ae3b42e3`  
		Last Modified: Wed, 21 Oct 2026 11:05:54 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fe2dc501400f8449c763b517cf6d4cc8f73293c20d8d542e3313f7bd48343`  
		Last Modified: Wed, 21 Oct 2026 11:12:34 GMT  
		Size: 83.8 MB (83837089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77e042b6c4d2248036953c6d0bb343b6035c5904b21a67f7d246399abb552ce`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76767285fdb457bfe97e0ca19555d2a400c7c161b9ee610492264b655f8b7e63`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:7aab25f57e62cdc79be1353e15c96a7a30babb00e90a96785b81c9e5cc5cead3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a0c35ff9707ab71bf5d059566b38785e548d5defbdf8804bcdfdc6d733442f`

```dockerfile
```

-	Layers:
	-	`sha256:554e4fdd92dea50044d03293d25e117a5fc9a681a3b594899462554b0ee71f17`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 7.3 MB (7334084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:695bd07c93f4dc58716814d61de8a3b72358f8e29fdcd87e961b7c4576830ad7`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
