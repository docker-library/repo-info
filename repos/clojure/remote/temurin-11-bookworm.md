## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:6f28fa4123a243e31a17f8b20d6fd050217205fd2161aa28a2a0688d790611e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:48f05f645627d6c9a931c55400a8064a1e0ce3e2f233bed79b87e9f140beda7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272387586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82739cdc3cdfa6edf1aa492fdd5ff18d184fae65589d7be00bdb917ed4a62d7`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:16:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:16:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:16:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:16:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:16:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:17:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:17:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf7852da31ff19ea2b157a473affdc3f38f7e8d219aeac7414cdee1ff9d535d`  
		Last Modified: Wed, 21 Oct 2026 01:17:31 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432ae3b369ba9f90c2055b0b436b8380aa2ee3a1f21cd12aca4990db9d96caa2`  
		Last Modified: Wed, 21 Oct 2026 01:17:30 GMT  
		Size: 78.0 MB (78000338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f46656a03583ee659677caa090539faa054f6b1f0145b788820fff43500e1df`  
		Last Modified: Wed, 21 Oct 2026 01:17:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3759e6c1d4883b1290b8a8fdac2174129da2b5bfb91755e71c4b1cdf90d9da0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7413224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee74c11780d9a371d75b5e5e689c3802c315e836a9a851148d092edcdb90d8a`

```dockerfile
```

-	Layers:
	-	`sha256:9be86aad661cb21f65fd4c8fc9dd5f15db34bbe9a8e1aed825fb7bd0e48f1343`  
		Last Modified: Wed, 21 Oct 2026 01:17:27 GMT  
		Size: 7.4 MB (7398861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514e921947210c118c08e5ea4092d13d9dde7790b2fad185f84dc82542b37e09`  
		Last Modified: Wed, 21 Oct 2026 01:17:26 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:83e8f5fed30768397190849e030ee2979ecebbd5f818d0a5e832a3d42813b4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (268964363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b86ec54133448c6044ac987c734b81bdf7dbf9a68ff7152190bd5bf29c46c17`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:23:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:23:12 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17afe4f8aa66b16ddca74b11a350b704261ecf806377fee3d1d42b2a8c608352`  
		Last Modified: Wed, 21 Oct 2026 01:23:53 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf3c65faf8f70afc10c3fd9046d5b1b4819026f3c5553ed87e5195fc7e44b5d`  
		Last Modified: Wed, 21 Oct 2026 01:23:52 GMT  
		Size: 78.0 MB (77984030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fba9140163e53ba24c065babdda23c289ce0515e9a74737ff50bd776b8e146b`  
		Last Modified: Wed, 21 Oct 2026 01:23:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5be53c91d1b63b0defbdccedb4d06e2cf1a8a82c2f518247340f7d20f69b0834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd252738f8c7d975e8d0acd6866de3e1d806df9296f5f627ab7986e2c3a0bd7`

```dockerfile
```

-	Layers:
	-	`sha256:688682fe898e0a53844438a248b1f14e217e7dd6a46daf524e12d8ca85f677d3`  
		Last Modified: Wed, 21 Oct 2026 01:23:49 GMT  
		Size: 7.4 MB (7405242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:593a1a4083dd7d356af6463b0ebe29c977bf7984fbf8a79ea817e71100c85356`  
		Last Modified: Wed, 21 Oct 2026 01:23:48 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:d14c48e5ecde52903456c3fb18a0236e0c94fd9c47255305457a01808b644905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271749348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5776e9fe7cde349b61a9e8d534cc5bffdbc03a380be5d640c59d8615e2c660fa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:14:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:14:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:14:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:14:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:14:29 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:29:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:29:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:29:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6366ab15846561f7c1d7bb19f95bcb3b146f60270eed9d77a9cd1ff1a47fee8`  
		Last Modified: Sat, 17 Oct 2026 05:19:17 GMT  
		Size: 133.1 MB (133095131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3420946ca8859a3ac16ed9bc9058ef42abd295f292879a0c8a5308ec8ae301`  
		Last Modified: Sat, 17 Oct 2026 05:29:54 GMT  
		Size: 86.3 MB (86290832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7830cf8dba5d6e1bfe39d17ca397b09da658dbd41795beb50dc33dbaa5fde3ab`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7013653e841ced0735a11bdec2ab1ef7c2bb10b48c30208945597b078f14131d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a8ded99128d523c572d4231249592a8e9a57411637b1a7e67b62c979e3bee3`

```dockerfile
```

-	Layers:
	-	`sha256:5be561ad2db9430f260779f96029d57af0cabf297ceef11bbcb19af13ec64343`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d4b8bc4bd30be30d29ba3c24b487ac8486724db069b37099a4f28c5f9e4e21`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
