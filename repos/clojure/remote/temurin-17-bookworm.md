## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:221916821f0cdd442a980dd3ab29dd13b16a24fd9390b6a84d27b88853d80c9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c30cf7e0d44fc9e428ea7ec4e1778756d4e0dd2d3b5d99a34ad8fb054c35391c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272500837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e9fcff465f2f0d954e4f0aaadc8926cc9031631a2141095849d38c82c8d339`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:59 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:15:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:15:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db719b8ead959f4b8f18e31f0cec18f33a440eb2379f3c5bc205d11d42e4b8b8`  
		Last Modified: Sat, 19 Sep 2026 01:15:34 GMT  
		Size: 145.8 MB (145822673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ede18280e3d1c47575244a8a5095fec155d97408fc63470b132727d74d7a2d5`  
		Last Modified: Sat, 19 Sep 2026 01:15:32 GMT  
		Size: 78.2 MB (78173686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5872ca0de397df4d40297386939d827ccc12db36bdf561a90dc329d4f0b019b6`  
		Last Modified: Sat, 19 Sep 2026 01:15:29 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a24b5b07adfd01a5e1175dfd07df85eaedbf6238f09e5985762f4963f187f18`  
		Last Modified: Sat, 19 Sep 2026 01:15:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1636fab1dd30729b978152d9272a7f8bda6f7e53e0612c98e044e76e634a34b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b9a4e1dee7af2ee6636b5473a19f71e1389fe8df1bd7804cfd9c52b888532a`

```dockerfile
```

-	Layers:
	-	`sha256:235f91ac2e1bfdb4f0c6e07b3c8fbf3286f4289fce9df114b090d9d97d9ce6e8`  
		Last Modified: Sat, 19 Sep 2026 01:15:29 GMT  
		Size: 7.4 MB (7380632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8538fc14fc372251c6938b60c637965fe646702e6ecec505fbc05fd5e86e436`  
		Last Modified: Sat, 19 Sep 2026 01:15:29 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0f4ccf8367a1830595183d71c03032f9e532c7c8b34a561709e6832f63ea677e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271213056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa173d62f1bfa586bee26aec4ffa3498ffc66b3d0b3777e1321fb1843137a20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:22:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:22:18 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:22:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:22:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:34 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852feadec7dd9b79fbbe0329808cb9f88294fb501c61e5ce84ad190f70702da9`  
		Last Modified: Sat, 19 Sep 2026 01:22:57 GMT  
		Size: 144.6 MB (144647461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6091446522f92f61ca736e6f32ad8ae9c45e7dff56b37cd271c34e3340f825`  
		Last Modified: Sat, 19 Sep 2026 01:22:56 GMT  
		Size: 78.2 MB (78174644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94163a46ae5aa965329ee7e51057a49f7ab3665f4d0e7563a9b9f6835f5c371f`  
		Last Modified: Sat, 19 Sep 2026 01:22:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e806e4694c1b9d7531527ce68473e009debcf9d67c2ba8bab3adda9d47f175e5`  
		Last Modified: Sat, 19 Sep 2026 01:22:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ef22db60728cf096154cd6590f90260b6e3f377a48638719c76c305b28fca2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c979e0cd6657b7dd48565ddddacb056c0a6c4b373d651e5ce676c5b7924ff3c`

```dockerfile
```

-	Layers:
	-	`sha256:8753ddacec6e3db04b434a4eeaeaa1045f3baed2f091920831a74b42bdf82e50`  
		Last Modified: Sat, 19 Sep 2026 01:22:53 GMT  
		Size: 7.4 MB (7386395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9633fc13ba1596faf72e8e7beef93d08a1e96b4796613a6a815dfdbc18645d1`  
		Last Modified: Sat, 19 Sep 2026 01:22:52 GMT  
		Size: 16.0 KB (16048 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d7b8d55c79d54dbd3bb2fb1c6e9ceaf8b544b02f6f80b3abdc137d0e5fafbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282014581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f4d96beab66fe1c2d8cbec2ea672c8f8355e19c669547fff643d0cc3ee6f06`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:50:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:50:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:50:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:50:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:50:38 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:59:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:59:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:59:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:59:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:59:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f69fd3fc29be41a5a525ca0c3eb7d63a7aca936ad5899d2128fbdb7e32602b`  
		Last Modified: Sat, 19 Sep 2026 07:54:14 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b960a3d54c46e1aaa5dde9ef239baacd940e07b144f72015fff0c21902659a7d`  
		Last Modified: Sat, 19 Sep 2026 08:00:18 GMT  
		Size: 84.0 MB (83989938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddcead3dd8f4d56c50b8993243c9d47f036b13db53e4df9bf011ea70b26e779`  
		Last Modified: Sat, 19 Sep 2026 08:00:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07160580ac69bc0c96e2bf0dc30b5854d959e75848411cb06470cdf6c1da18c`  
		Last Modified: Sat, 19 Sep 2026 08:00:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bd26c4c0b158f235c3e85a4594ff53ba20b305f8c7ac7204ac42e23d86a07017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e7bbfb55c1d70af9fb045df3349f24b60994fee038e6817e07fd8d1bcf6987`

```dockerfile
```

-	Layers:
	-	`sha256:a0fe5c48a9e5fd72db3ddc2813e8b840fab8660c8c34a6da23964503c12d712d`  
		Last Modified: Sat, 19 Sep 2026 08:00:17 GMT  
		Size: 7.4 MB (7385846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcfef1f4bf16c543792e5dcc38c9403eb161ecef44fb71678cda973389e93adc`  
		Last Modified: Sat, 19 Sep 2026 08:00:15 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
