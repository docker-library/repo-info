## `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:de5531c3c0d2ecc4d026cf42c2ac3227e8273d35889554cbd96eb32bafc98cba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fddccc7e8ab949bd9ea66c770e673a57e0cbcd27ef2766e504da628770e2b273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256920842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b498ffef72945602f702defacf62041a10ad20cfb2f00cc8dac02e9ff619db2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:34:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:34:24 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:34:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:34:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a4ea2abdaa10ceb29cd40aa57383d09ea876430d91d6fa25b64f335917a060`  
		Last Modified: Thu, 16 Jul 2026 01:35:04 GMT  
		Size: 158.2 MB (158166939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c865e773c0eacaa7ef2095129be7996a21c38a4296133b1302c2a0b1643b9a`  
		Last Modified: Thu, 16 Jul 2026 01:35:02 GMT  
		Size: 69.0 MB (68971958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8121411078a53ee8212b25e932dcab78839a0723f02d50a7df0ec332dc758d`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4056b5afe0fb79db2271ac7367d6698d4b339399d1b71c7ed5b98bde35b06e3`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c174637ddba136ce918d081cedfcaa4fc53f98eb09f1f8e865a88369855cc490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4039581c9cc74d0f15870c9b6873fa8a5c7081cb505351ce48d074b837946c`

```dockerfile
```

-	Layers:
	-	`sha256:f39addaece2835f9cd06446c12b2f5f1d3f05a77997f37b5fd11b6ba0a191257`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 5.3 MB (5259184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0018cdcbf8ba1962e59599ce256f37f8617fd5f5e18cb496f9cdf6c97af28de4`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:948b8cff8b90bca2d30498d8aa2c19ac35c08d9be5f91b5cfbabf9de0d0ca288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255383694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a02ad420efc28fc58de8d58bcb1a3fa07088f81d7607bb2de49aed099ffdd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:30:15 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:30:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:30:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e933ebba366272aea14160f7a113728c9e4827cfed68e4e652f0e03ce4dcc0`  
		Last Modified: Thu, 16 Jul 2026 01:30:56 GMT  
		Size: 156.5 MB (156461203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864800fb172819c84ecc28d1bf3e7e04d8dd89671ae72c91f26f0a08104b7d42`  
		Last Modified: Thu, 16 Jul 2026 01:30:54 GMT  
		Size: 68.8 MB (68777746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7a50f2837c4793ab655489c810be182989a35726aef452ef5beb0e40fe56d0`  
		Last Modified: Thu, 16 Jul 2026 01:30:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128821213a92e9531ec34205aa2a1b883aa33c4e9981e9f43681a38596fee4ca`  
		Last Modified: Thu, 16 Jul 2026 01:30:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:abd473fcfbfd4008bf16a5baa2314b3ca581be4e39ed3b510cda6e2c380e31e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1742ac1fd9341d7a8b9e2522b81dba8918015ebfd324d994dc42b6110a357a7`

```dockerfile
```

-	Layers:
	-	`sha256:ae78aa4e50d5e9aca30c3cbafcb76750b3f87b0c460bbe21912c24977ad191ce`  
		Last Modified: Thu, 16 Jul 2026 01:30:51 GMT  
		Size: 5.3 MB (5264945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14bcd78a0ef0a8eadc6ec5f0375293fd05c3c01c5941d4d23c736a746007ad72`  
		Last Modified: Thu, 16 Jul 2026 01:30:51 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f311c94c563c8f76c7f86cafeba068b3ede22afd377232592fcedf1a3889e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266318856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9125ff4adcd22c1ff663d3b7e0c7dac5be1bbcca9c8edfa89c4211a335f396f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:35:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:35:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:35:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:35:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:35:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:40:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:40:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:40:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:40:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:40:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cf712e33369adf58823268a3b45a689a4349195cf69731c8281321ac1929b2`  
		Last Modified: Tue, 14 Jul 2026 08:38:24 GMT  
		Size: 158.3 MB (158343190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d22e9a1c5710683629d821cc168acebb9c7a8a58cd4ee957c6b4eb5c6c22c0`  
		Last Modified: Tue, 14 Jul 2026 08:41:29 GMT  
		Size: 74.4 MB (74373147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301c459dc6f6b34826706e4cc8a5c31a3e690f78a332ed6890388ce0afd66afd`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88754c334467efd4044938e6cb5fea85882b7797caedccb443979b0e9312184`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0ec84233ce7215e91e01be88d081a185447dca547d952fe0f837fe7840389453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688245a52f309071206db2800076b77e260a4d8dd68c72aecb8a41b1d292246e`

```dockerfile
```

-	Layers:
	-	`sha256:88f41ee98d6a10c2926aa9b5dd491eceb12ca05870712f4f79d13bf0088d2229`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 5.3 MB (5263555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1077363fe2e50a901e2804d7919678e89044c9633f4eb4611e2dc1fd3a72f6fb`  
		Last Modified: Tue, 14 Jul 2026 08:41:26 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:03deddd5af3c0e2e724bf551e95b832e01a6016edb5b83dfd9ef61f7b68d3f88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247179199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09867acf9fb9e3635d3b9c943f84bac3456dce55616d995d7c1a328c077aa45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:50:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:50:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:50:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:50:12 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:50:12 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:52:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:52:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:52:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:52:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:52:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e879ec414100f7cd0d5ba94df500980e20e9741e3a4a6ac85a4565a0bf6d874`  
		Last Modified: Thu, 16 Jul 2026 01:52:08 GMT  
		Size: 147.4 MB (147388350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ac896e720c28f75319c68a2a2bf7fb0e1f45d52e2c0fb2a43adf9d53cf3471`  
		Last Modified: Thu, 16 Jul 2026 01:53:10 GMT  
		Size: 69.9 MB (69943174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086f79f12492ec6ee2dfb6ef21fc94c36f8a12dd779c1485e82ba6ab560cdb49`  
		Last Modified: Thu, 16 Jul 2026 01:53:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eed2596b4e724d4798bff95f253b9974b6d72764b8937a9e65f7e9e59312ca3`  
		Last Modified: Thu, 16 Jul 2026 01:53:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d9db02ac790d618ba88733b2056f2312110881b22a1f070f812e1284e2098f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3191715e6bd066cec2cc8a5f955973f2a26d5f7dd7c25d76b29cc2bab870f1bd`

```dockerfile
```

-	Layers:
	-	`sha256:4a83dff9eefca069d12cb2520888650e44593a998e9edd0234843c0bdfcb3375`  
		Last Modified: Thu, 16 Jul 2026 01:53:09 GMT  
		Size: 5.3 MB (5255108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:693390216c27e2407a5b992df6a85cb2b3dba0737d9cb5c1ae60603f42c7d7b2`  
		Last Modified: Thu, 16 Jul 2026 01:53:09 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
