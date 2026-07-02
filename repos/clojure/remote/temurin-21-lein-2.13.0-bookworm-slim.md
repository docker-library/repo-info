## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:a71a51c2de419e31c9e5e882fe315d3d50971f6ffdbaf61216015f23ceade5a9
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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:06f906c519a0a8f084a6c27af0ed326f2600d68ffcad9e104767c36914085ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208991910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b722aca236d3c00d8990a683209c61208524b0d12db54690e98d005fcf6a2910`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:04 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd4d43b910473a32a3b42c1ff905ef15bea8b83701d7dd14fd4d8c726e4c64c`  
		Last Modified: Thu, 02 Jul 2026 05:53:27 GMT  
		Size: 158.2 MB (158166913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce52b25cd2492f9e3f35fdc194a562cfed0f704a5db2ebfea806b2eed730fe2c`  
		Last Modified: Thu, 02 Jul 2026 05:53:24 GMT  
		Size: 18.1 MB (18071751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a25e2c90910ab22c35c9aa4faa664cd49a0c998b34929502c95bceafc9cb60`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a322c147f1688e17fdfd53573be9314fba5af30806ee7ae413e69cc0dd4774`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b085ef59f8ac1411b207fae316951772050a73a2fb95144b229079f59807c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9db3564511fb72b127dcd98241110ee99c29956d42490c2a5f20b6bbfaa990`

```dockerfile
```

-	Layers:
	-	`sha256:86c53b640b0b9e77b25ed2159decf4196b720ce8f59c4d571f6fba78c07ed9d1`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 2.7 MB (2734189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb3a4735c80c904dad716c9cb611c7ac6425b901a109e4d343649f0681b2801b`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ccfe3a5f6120d6907fbbbd1f183af1f85886dc0c7b47429b10c81d6b9d35c923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206993380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e7d860cff378da7d956dd554170edaf5b49da1e2d0f77e60e38deb0aa2f3eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:40 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b14ca32705cf2f071ab76f36720474f5d5abeede4932765cbf1b3a33269172`  
		Last Modified: Thu, 02 Jul 2026 05:54:04 GMT  
		Size: 156.5 MB (156461306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fae109e90cec58a5c327be3689b2e2c1a5697fd6a63e36fc1144481e1939f9`  
		Last Modified: Thu, 02 Jul 2026 05:54:01 GMT  
		Size: 17.9 MB (17894046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9527f5dbeea1936def955ac32ece7fe632553c4f68656baf6f7aa7087f11d7`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f569a71e5cc895d07b8473c22212993207e5203be68c67de2334cecca577e51`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3264c321f99c335346a50f421d57e4e1958bb1fcb2f37b984aa604382da52212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de3bc1ef284658a8a49fedcb66fb39b838196b93c0228cc6b7d49c225b8f18`

```dockerfile
```

-	Layers:
	-	`sha256:2bebd388a2ad88c5b4ac88733562fd889279583bffb4134e74666df94c5a1210`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 2.7 MB (2733804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17935498052b6dbca732988187b3a4368acefca7be5f96d7e30a66dd6b394a41`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b84b68a12c45473273022a3de566ab84715b09c39c1507532c92e72fd1b68514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213204291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d09d8c74481bd9c04f7eabe4356ad449c4e075a3b027c6af862e187071aee5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:20:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:20:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:20:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:20:25 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:20:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:20:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:23:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:23:07 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:23:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:23:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:23:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:23:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b861214dad2496c9c76eb0b9e1e549b841c66aa96200b4bdf05f7b1514a0a985`  
		Last Modified: Thu, 02 Jul 2026 07:23:55 GMT  
		Size: 158.3 MB (158343255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d30786b0993874da8c0384be30d3f88f4ff978feda0edd08eabb014fb2c2a45`  
		Last Modified: Thu, 02 Jul 2026 07:23:51 GMT  
		Size: 18.3 MB (18263432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c297649103ace1beccdcff238586a5c784ab9d8442d76c860647b922dd5e83`  
		Last Modified: Thu, 02 Jul 2026 07:23:51 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82db35d66225e7b98a87cc36ac6f322021297e992fb89eef7972b37d340e5d98`  
		Last Modified: Thu, 02 Jul 2026 07:23:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:35c56f0efa99ec6aadbb6ec6e6e7ce566b8e77eaf8a558b20098498f63cc1780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d168ccae2ec53e58a254d826e42d326e1b3a395751d9414cfbbf359c6cc9454`

```dockerfile
```

-	Layers:
	-	`sha256:9297019c3777d9855cfb33816c0755576127c48a7df56008bf5719fa84fcdddf`  
		Last Modified: Thu, 02 Jul 2026 07:23:50 GMT  
		Size: 2.7 MB (2736022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a72a2efe28de5f734dcfb60e1f78225d1eb701c58f6986ad74a1e06ec36098`  
		Last Modified: Thu, 02 Jul 2026 07:23:50 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e871e73ffa488d32cac483d0763bdc0f1de67304ba4768caa85c202887b7df95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196522443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f10845dd0572f58340d96866416c1e8be94b6775385f8f05169feee76181626`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:13 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e014712a24813f5c84e7dc8cb6c633392b39cc5509ed44e2fca49b06838dd63`  
		Last Modified: Thu, 02 Jul 2026 05:53:42 GMT  
		Size: 147.4 MB (147388340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbceb0de4e2741c278baaf336d95bda05f649343a676bdcab1cf9d5cb3620986`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 17.7 MB (17724897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cf978472a9330126325c59dce316e519e831e2e43ee5c5aa455abb92cf84c6`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dac6b09ba958732ef6c16ff461f78ddfb5ab81ed016854a3b2b25cc37f6627a`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9b6d4bd4eea65dcb39e0b1f150b0ea0f908767e5d44e46f26fb73d5e03118916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e57d5e935a424e023f691c9e92bfcdb78e3383bf98b2c097198b95ee4be85a6`

```dockerfile
```

-	Layers:
	-	`sha256:3414428618f2a649194a55d92acb6027179e8d8b63282ca15eb434bbca4b2854`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 2.7 MB (2726003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298e65bd0ec06133c33df730e9c2e97a3d1e47db643c37b9cb4184e9b35ae57e`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
