## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:cd9ebaa1a983f90357131f4b7424f0f33bb46d75a26d8ddfd0e5e21b5e351073
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4c63dc5984e2af26e1678391c39f05c7872d749964cd589a8779fe59c8b488ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253044889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ebe46b63c4d5e92bab22d7001904cde7f5a3e53d47930becce73b98faca1a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:08 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:23:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8343ab464319437ef6b0a7cdd617895dcae3de11a9a1b899faf61539d016d9`  
		Last Modified: Fri, 25 Sep 2026 23:23:42 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c241f933a64bd395e40a89087a74b6e46c2115bd605216661cea9173225e0c92`  
		Last Modified: Fri, 25 Sep 2026 23:23:40 GMT  
		Size: 66.7 MB (66687933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529c54cfcc65eafd4e11dc3330647d03ebe4cd5a22896160bb19bb7fcfe6e695`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5fb53f64b27f67ab2213d2e13e9b9a0d2044d01b6c79f6677a817a294206e3`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:526b1403cd457339d514f35c0b3a14ced107b3a15e56d9e49ab7d94a56c1d1d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6966cda1a7f40c1887de9adb8b191496d9a838010fc0701e34349201cd6c1a`

```dockerfile
```

-	Layers:
	-	`sha256:90fbafc2b18155bbdc774e7bcbde3a9440cbafe3befb42661a18ee5715928aaa`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 5.1 MB (5121160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83261fa54e076d5eea54f2bad80410df831251b9533f64442bd6e8ff152b6497`  
		Last Modified: Fri, 25 Sep 2026 23:23:38 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:452eee595c02050adc3ae70cd6b1ca897f530b203f0424291cc41b056b310fc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251207120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf8391a6ad49f159c7e8c2a48db3ed54b613e18fb50f39b07664ac512217e53`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:55 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318beed34e313b293bc04de958f811ba9d72c5f8f8c3f993d471f6f8e04fb71a`  
		Last Modified: Fri, 25 Sep 2026 23:21:34 GMT  
		Size: 156.4 MB (156400656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1981d81ffc912c454590f319d4e7d660adaac8d723f889cc3a662ec8b11573a`  
		Last Modified: Fri, 25 Sep 2026 23:21:32 GMT  
		Size: 66.7 MB (66681744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c60ab9e37e755132e65460e95accbca0152d51371bfad755752d4450091d8a`  
		Last Modified: Fri, 25 Sep 2026 23:21:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c01ba74775b18a46a1482f62e6839763fd88aa4f5e505d86869e76df39310d`  
		Last Modified: Fri, 25 Sep 2026 23:21:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf3d18618b8f9530f8d33f658002c414d9f62f80be789f6efaf81658760dbc2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11bd9cc4f04d278b3b7d4af000bda404177fbb5cfb69895b1fd3b4c5dae94bbf`

```dockerfile
```

-	Layers:
	-	`sha256:8336efa1ca99c8e8e6817d21055a1fe227325de42c01131c144a1c8cd7a07c1d`  
		Last Modified: Fri, 25 Sep 2026 23:21:30 GMT  
		Size: 5.1 MB (5126921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a62b53cf0fd2f90ac0d802be22efbdc645c6ff18fadc7fb035c7ca11a69a349d`  
		Last Modified: Fri, 25 Sep 2026 23:21:29 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9983c636ec26f1a2b28f9f41c3ae1ac68c5aad2a9294a1027dfb428b5a5e5498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262858465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf892d461f60d22b4bac65c655b0e532caf9c8298bc442e88879f452dbc796d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:03:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:03:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:03:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:03:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:03:06 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:12:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:12:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5584cac42c70ce6b21896391a65ef3f8918f712975e83d58d00a1f1ca66d305b`  
		Last Modified: Sat, 19 Sep 2026 08:06:42 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28c901e0d4a8d586081be7311bde506b919294d10445404d2fddc0397fdd8ca`  
		Last Modified: Sat, 19 Sep 2026 08:13:24 GMT  
		Size: 72.5 MB (72498931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe4c7a7fbee9f518c0a44252b9d644d980df6f562c037bcbdb8167b351f8d91`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4c0a2d06379faa0e16a64e5862fb3b63335c9f691d574e883f2444a950b211`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39859a2db0d53a017c279b9d4b5539740da9bab34bd343700eb6eb7593aaaab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5077ea5fdb41e16682d42f81e551fcab4e9fba841e31dde4e2708829de1996fa`

```dockerfile
```

-	Layers:
	-	`sha256:ae61ea49a7e3e8ec4a6950b89157aa97cc85a302fb0311f406b1ba01a23ee55b`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 5.1 MB (5126310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af3e278614f19cd2e5d31cbe0d048e6f8a2c6e7f010bbfab41988a64c02c4f7`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
