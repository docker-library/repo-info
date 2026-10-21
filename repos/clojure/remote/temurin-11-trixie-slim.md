## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:c805f070fc5d5beda092365b202850d13ca3a0027c4c2955aeb0df35d880c3ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5823eba575d94b076eecd7a043f82a048153b1e08a75d011a831e2449d9724e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244698469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56b8d4701535ac5e06bb4c401e117a2fa7e1dd280a539011aace8a16e0023f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:17:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:17:19 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:17:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:17:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d2bc8090ba28af3564e65f4180978dd7fa4dd5d6673bd69586a015e25dcfd5`  
		Last Modified: Wed, 21 Oct 2026 01:17:56 GMT  
		Size: 145.9 MB (145864491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b25175e331d7c465f9ac54b295389c1c81777496184d86c230233573c406be`  
		Last Modified: Wed, 21 Oct 2026 01:17:54 GMT  
		Size: 69.0 MB (68989755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8959bb114b5bc5b6696dd246daf09c4d86c51fb496e0b2ce01bad51c8d12308a`  
		Last Modified: Wed, 21 Oct 2026 01:17:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2f8aac62bb27e98ac5895c722e7a3f15805119fdbc9bdabd1df8ed9f58195e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cde7db7b2663ef129fab016372c7d625506201e4c64b677e8e3b6abbaf4d6d4`

```dockerfile
```

-	Layers:
	-	`sha256:2280c00e8de5527c5d1a00cb5949b031896999b8cae057b87e6dd329997e2140`  
		Last Modified: Wed, 21 Oct 2026 01:17:52 GMT  
		Size: 5.3 MB (5281553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa01f3fe7e114f3d96fa8dea420102cf416baeca1425e9503421ce653ed7f1ed`  
		Last Modified: Wed, 21 Oct 2026 01:17:51 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:653410670b8e4803d425abef56cfb72e56828f3de6d14fd4e7d5175fcd1c0479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241583283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecffdfd6abdf1deb41507a7a68027ebec95798654f9c2ef0ddfc53365703bfb`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:23:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:23:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bdc54d31cb698dbd2a2dbd12f18d8b186919b4eae25199a6ceb9c310fb3752`  
		Last Modified: Wed, 21 Oct 2026 01:24:03 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71437ecbb9d0857b9d4ee2483bc9d31b9176199f9d9c3778f1492c4e0752eb45`  
		Last Modified: Wed, 21 Oct 2026 01:24:01 GMT  
		Size: 68.8 MB (68805582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d73baf55f4a23b45636d0eb571f4d8beb17f3e90df9e5f4205db7f03e057ce`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb971645d5c0a47592e3ef20eb1bb3c534ac182e9f2e5a33a2f18f5818af99d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dce118857a5827f9db06fbbdb808484e1a3bea88e015aed08c65b36587eabc`

```dockerfile
```

-	Layers:
	-	`sha256:b52e53d6e54834e2b0eb1d40a4e8877dc303c1995823a421441883c166d9e11e`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 5.3 MB (5287932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bbb054bdefd64572bdcf2f1753668ba308b2b0b536fa79af31fc244b7826514`  
		Last Modified: Wed, 21 Oct 2026 01:23:57 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:16e78cefb4bd23c9e2c9f8379acae434592273af84f51c6bbecb2b039ff5a57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241164803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7813123c655a909d91c0410558d9180c63c2b739cb2d43732fcf9e1f2778046c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:24:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:24:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:24:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:24:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:24:53 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:34:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:34:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:34:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2490f42e1ec3b90b66636232de8cc5ad5014f03d8004248781144439cbfae14`  
		Last Modified: Sat, 17 Oct 2026 05:29:13 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8245bf51d1f5f5c1f236eabf0819f7b4e247bec41b459b5f1e3616123c5e4653`  
		Last Modified: Sat, 17 Oct 2026 05:35:12 GMT  
		Size: 74.4 MB (74417427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4368cb291bd8b4d11345ed77301a1b14aa24f832528e0d41327f0e8b1df16b9c`  
		Last Modified: Sat, 17 Oct 2026 05:35:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30948b7a1a46bb0cc3df91ebf58eae04a691bc107a8fbdd8d34192ad716ff616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62dcc133f37ea27c78b49380e35a6bd57f34eef15fda21d07c5c06db7afd0d2`

```dockerfile
```

-	Layers:
	-	`sha256:73b726aa77220574133d592af1ffc49ab9c4baf6ab0351b74ceab74fbb1dc9c6`  
		Last Modified: Sat, 17 Oct 2026 05:35:10 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afe4f24c03b694bcba12068961623ae6c7f6ea90f18073f6bdc1175ecd77057a`  
		Last Modified: Sat, 17 Oct 2026 05:35:09 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
