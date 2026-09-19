## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:343121d452ad97ac51f335ca5ec5be13aba3bea61295f5ab57ebe66035450fd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:972d4e4beaa42f46939186067433ab64ac58a9c7ae78fd58c8683442af107165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282007426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0abb65b5791d19b74f6bcb4be927e0e3507f5e74d3b86984810cdb18a75c430`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:36:07 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:45:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:45:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1af52d1f120ab866cd01f53f55536432689f0a99bbf598990aa772fac79142`  
		Last Modified: Wed, 16 Sep 2026 10:40:17 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5649db570fc1c25ac13f8c117ff4468363ffa7cdaa17cce7b4221ce7c3d3093f`  
		Last Modified: Wed, 16 Sep 2026 10:46:22 GMT  
		Size: 84.0 MB (83990356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0d3488c784073618c2159210c434adecb45c27e2a3c15b9275b736ff3dbbd4`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5140f70d240e1ebd1a55dc8915d6bba5a01335dd95623127fdd6df0046504ab2`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d8ab939c8230a14ebf4563e66819ae80067ba87b5863477bc24f261157642629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faa79ea80adfafceb219ef41eae3836776e16c1aebfc1f4c922308eecc0f9fe`

```dockerfile
```

-	Layers:
	-	`sha256:40cdea07dcc115e9f0221460bbe5ae75d0c3412f7c16b0421df04e193c6a1e19`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 7.4 MB (7385810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df62ec34fcf1209f35b1c91074aa352f0d4344530d89b51ebdb27b5e4530e520`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 16.0 KB (15979 bytes)  
		MIME: application/vnd.in-toto+json
