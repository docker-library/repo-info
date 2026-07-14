## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:b9f6d05e8cddb303a684a8a42e24821126b7da4503387ab4cae81170905765a6
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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:95e91b1b676191f886e92d99960b768da8bd91e34d9e490df2a73e4cb0ef1629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218625985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c561e722c8a105caae15b72924d8e8f783761eb43088f2b0fda8db90e541420d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:47 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:47 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:58 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d6890fc6b9a9d32179f7c25d459d863df8d575a3c922221aa3403e3d97b36`  
		Last Modified: Tue, 14 Jul 2026 02:20:19 GMT  
		Size: 145.9 MB (145906343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42eccca2f15cb12ccff0bbac10b5f715b9c539e5a8ae111188a647add1b97c60`  
		Last Modified: Tue, 14 Jul 2026 02:20:16 GMT  
		Size: 18.9 MB (18891463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08974ed4cb92d85f7fafb73d6e77853709c50a681beafc06d0d5c2a35dcbbac`  
		Last Modified: Tue, 14 Jul 2026 02:20:15 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85e36ac40ef9401723559ff8d9384def04473b2d9eeafe793a30f9c17e3fe8d`  
		Last Modified: Tue, 14 Jul 2026 02:20:15 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9fd7c8da5d4d0fbed38ca4ec7d636777808da47129a47504553265f622beefcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f8e74d7cb6b9e0c3c0b2520bc3ca0834e4f95385049123abe0ef91a95152d6`

```dockerfile
```

-	Layers:
	-	`sha256:be073b7d398fcb11f4ee73ffc93e1a28a66bd7eedc79b352497a3cd9a59c84d5`  
		Last Modified: Tue, 14 Jul 2026 02:20:15 GMT  
		Size: 3.8 MB (3817856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21f0e553158a5b6e6528b926a9eb24c4252e1af625c80ef38f1c0da901618e4c`  
		Last Modified: Tue, 14 Jul 2026 02:20:15 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a608cf38d3be84e340a9bf5607d7c053cf5a3ff3f385537d0cd82590734db69d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217766226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a1d02d414bec8ebae3dbc681ab2948c6412bd6fd65c4696aad7048c44862e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:48 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d414ab795865c1fa927b84708be385ba93eafdb8c8a81ffcf9958b4fda98be3`  
		Last Modified: Tue, 14 Jul 2026 02:27:11 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551060e5ee4a2efed1b659b97b55253ad4192fa74517811dd93c3ed1dc3505a3`  
		Last Modified: Tue, 14 Jul 2026 02:27:08 GMT  
		Size: 18.9 MB (18852102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870b9816dae070b0e7178e73cfa0da865cdf61b698dae981643f9d8bd2a85d9d`  
		Last Modified: Tue, 14 Jul 2026 02:27:07 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd827a665132fd533ff21bf8e79ac9c4d02051951e7bf3796a1e5ea1b0a7ef81`  
		Last Modified: Tue, 14 Jul 2026 02:27:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:18a8cb871945c8c08ed7418cc05e787eeb824bedc573119b1f378e7714cf6ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e17dc96cb1c3414766e6d1bd68426fa7fc5d3834ece2792bd101c083dfad98`

```dockerfile
```

-	Layers:
	-	`sha256:719fd37a024d57634435c324fe212e0157c70ed4673f2f79139b361bb692263a`  
		Last Modified: Tue, 14 Jul 2026 02:27:07 GMT  
		Size: 3.8 MB (3818096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa96e8b2105af652a921315fe01a7bae8eadb04a8f0c99775a0cd09238317abc`  
		Last Modified: Tue, 14 Jul 2026 02:27:07 GMT  
		Size: 17.8 KB (17838 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdd3e193b02b92475ab3e78c2b092eb9ed5a4e5df7b71b06f2a3a5a9ddb37b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222356478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96effb286c1b093e9f35c6d9f178db49f5fce4d383ba110bdf84a7b3675d61f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:11:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:11:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:11:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:11:27 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:11:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:11:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:14:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:14:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:14:01 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:14:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:14:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:14:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:14:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fb6abf97389a5480079f9476410ce8496802854d1eea95873a807f0a0b4c36`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 145.8 MB (145766153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f320c411b3f50ca1ddf88780ecda494f27368773b5c9638c1bf340490accff81`  
		Last Modified: Thu, 02 Jul 2026 07:14:40 GMT  
		Size: 18.9 MB (18936600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eef7575f4a4cb471c9b3d2532ad56c3cb8e8e55ce3b3002fcf582d31690f8f2`  
		Last Modified: Thu, 02 Jul 2026 07:14:39 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c14383ac91b27e684efadc58c59a4ab368da4b9512edd86cd0c9db66915c15`  
		Last Modified: Thu, 02 Jul 2026 07:14:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9073b5f66eaf1022676728036f799237b55a4e8e41b9110e210b6ffa2a4bcb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d9de5a0a9ee9da932906c2144cc4e4d167ce79ed358a24bf439f9d3a74addf`

```dockerfile
```

-	Layers:
	-	`sha256:acca30b8294356db0cd79d321f64605cf62170101eec5f542419a5ced83a1213`  
		Last Modified: Thu, 02 Jul 2026 07:14:39 GMT  
		Size: 3.8 MB (3818820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39b83ede636597198130b7b67086cbad36de3d48579bef70cdabf735619bd281`  
		Last Modified: Thu, 02 Jul 2026 07:14:38 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7dc906e47a8d93a978ebdc7cca7ffa400a73584273a560cb15a9d1d250ec61f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208729798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fc348c01d6dd12ad74babe080b998e9748cfb4033ddd2cd3ddabaeb0db76d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:28:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:28:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:28:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:29:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:29:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:29:32 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:29:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:29:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:29:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:29:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbe1a0b4600b2b9ee025d059e6fdc80e6b5a97def084a70dbb1ba8441ebc364`  
		Last Modified: Tue, 14 Jul 2026 04:30:00 GMT  
		Size: 135.9 MB (135910440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce9c5ee825e56d45dd2eb475279931b7554e8aa0ba6f85815b8413684cc2a12`  
		Last Modified: Tue, 14 Jul 2026 04:29:57 GMT  
		Size: 18.9 MB (18921995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374233db96994bf5fe0644c4e92b2a251a6cb3cae75e4b9dcde03b0a9fa61759`  
		Last Modified: Tue, 14 Jul 2026 04:29:57 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e22e4f8a6c2d701c1ab2eac73a4e09cdeaf0e928cebdfa7924967b1e43b3853`  
		Last Modified: Tue, 14 Jul 2026 04:29:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8cd5ad5a9c8506e48503064c0fc5aa747a2320d9ce4c33bc977ee9b3ade780e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6eb06a3e2b37ffa3aedb4fbf624e49f20be260805b97b66abefe1e75f6d426`

```dockerfile
```

-	Layers:
	-	`sha256:ecc05f61c8131da170f527218e7a8518115d764a399c04c538b19fa88afba69c`  
		Last Modified: Tue, 14 Jul 2026 04:29:57 GMT  
		Size: 3.8 MB (3814283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a5d99c92e5b93f7ab8a54890a0b0c4b416837f07d95945efcf0b247914b5ef`  
		Last Modified: Tue, 14 Jul 2026 04:29:57 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
