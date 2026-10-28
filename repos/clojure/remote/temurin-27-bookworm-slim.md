## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:6fae4f32f4ae453c96e5568cfa763584a0834552320bc3b2f829281c5aeef232
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:90881928f7489349292b1f8f0123d4747e765751598daef118dce25c16e93853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188379110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c92235ae4dc90f1580133d0d1c1724731a77e70e1ee7d348d2ea146cae6eb32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:49 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac377c17008712dfdddaeb217f8b22cd8ab792d10139a973aecdcfef099b906b`  
		Last Modified: Wed, 28 Oct 2026 02:17:25 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98c76827855a487814c90b8c81d7284f3a6178d128bdb2e3a7b4bc3a9ced7cd`  
		Last Modified: Wed, 28 Oct 2026 02:17:24 GMT  
		Size: 66.5 MB (66508143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936fdba64ce048b81bb3f1ed13565d7061cdceb6d0b53d52360f99b2e571ecac`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d323ddb3596b5ebed0650a52f4fb9081dde4b3063c1f42f60e8ed65e4a590668`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fac6a8f0d830a35e4ae4223a0ba0214ec95fa51902fb21a1dbfe9ee848904d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:077aeb256df6d5348d6e99fbc41c83d0b85d92659199b600564007efe0c53dc0`

```dockerfile
```

-	Layers:
	-	`sha256:af9839ec557f6940591f33810329f6353b8c48939b1666635651bd31f39064e5`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 5.1 MB (5081665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8da6dda81bdf08e7370db374f6b5450dcbd62911aca81335ab459a8d1ac7c994`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:728e35cb288be0a03ae3bae99b4ecf9aa3551d8ba347349b9568c6a576bee82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187272966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a088412f950660a2337d34ac98d86f3d5cba3f312c9b90962cd789a659a19f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:17 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa347a500fab7ba6b261a28266f5097a5ae3a2c335b8df970888a9ccb9edcf7`  
		Last Modified: Wed, 28 Oct 2026 02:24:54 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6224fdb46501c4e924dbf849dfdcbedf2a9e3540cbf22bfa6bbecf2c6c42edfa`  
		Last Modified: Wed, 28 Oct 2026 02:24:54 GMT  
		Size: 66.5 MB (66500827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889782f16441341ed52bb7f62c7dfa2b9cdaace5babd4248defa43f982f0c048`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897a8515751c7cb2d59f5ca891d946693ac2e305b1750018e54bc33fc544e73c`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a412d210acbf2ca9a21e37ff0a1e81910453baf0f34b2156dc27fe7bfb91e7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff15691c42f20928c7a5e1312fb0c66409dbdfba122332a2d43a2a994866966`

```dockerfile
```

-	Layers:
	-	`sha256:a4dba23cbb808000765eec3696c9d10b7c99fb05345b7196716bb700655c2434`  
		Last Modified: Wed, 28 Oct 2026 02:24:51 GMT  
		Size: 5.1 MB (5087423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568a21f118caa25bd84a3ad9abed9b373b9ef9f97ae09deb5fa176bd0a2f8781`  
		Last Modified: Wed, 28 Oct 2026 02:24:50 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5fbdd89f4248cb3fc1858912971bbdca2ab86e8e6b61583e88e6a9432c54e828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84dfc4bab2284646da2791cd13184003d084ee46a7366c77f7e1a85a320a3f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:38:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:38:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:38:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:38:13 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:48:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:48:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:48:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c08194d597ec2460af8b3a444f8995725d81ca5ced0756b4971b257c0a242e`  
		Last Modified: Wed, 28 Oct 2026 10:42:32 GMT  
		Size: 92.3 MB (92255813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0492406cba4b40ba5dea63a1842ff177b7dae4dc588a55873d947c90f1c27956`  
		Last Modified: Wed, 28 Oct 2026 10:48:43 GMT  
		Size: 72.3 MB (72333600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de066341d1a098eae961019abd4a55d49a48bc940d569d68b88e3c065499d58`  
		Last Modified: Wed, 28 Oct 2026 10:48:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b0e2fb10915efd41369725303298f9a0772d65e14481b6e369416be40bbafa`  
		Last Modified: Wed, 28 Oct 2026 10:48:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e16865834bd3189f68ff72b84c7c9c396a9cfbbc43f54551744ece369da375d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5086790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4203db9b528f20f3f4baff7dca5ddfa13464d19d379579409908f68a4036222f`

```dockerfile
```

-	Layers:
	-	`sha256:3d2a924a300ca958df473d249fd044d2460e5e3992d2f41672f6ac971b3b7d63`  
		Last Modified: Wed, 28 Oct 2026 10:48:41 GMT  
		Size: 5.1 MB (5070759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca17f49bb0f0c846819446d7da21f8b9bde446f059deb9a0d0777acd4d9883bf`  
		Last Modified: Wed, 28 Oct 2026 10:48:40 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
