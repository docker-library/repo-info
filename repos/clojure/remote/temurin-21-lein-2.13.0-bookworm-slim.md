## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:6e8db498355c77857c7117d72377694f86527cef6939ab4794eb20c2f275cefb
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
$ docker pull clojure@sha256:9851e14cf13af477a0a2f9c2685f03142980f1c01c76b99a19ea94d9d5007957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208987689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c523499a72e3f81a193a53f65d44e7019e2931d207b3cf7b4f2252274593518`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:19:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:19:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:20:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:20:59 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:21:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:21:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5226cf623791a2964a6088f85bc80af17dc3d9d7d8e0646e51b0db6253e191f9`  
		Last Modified: Tue, 14 Jul 2026 02:21:21 GMT  
		Size: 158.2 MB (158166949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8167bb2058a2eba0fc432657493c770de9690bf0bbc45dd1ef7b55a0caaade1`  
		Last Modified: Tue, 14 Jul 2026 02:21:18 GMT  
		Size: 18.1 MB (18072469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8794074a57eb04d6d24eaf0ed1f914c3665e8dd4445d4f55d960f797cc6ac1`  
		Last Modified: Tue, 14 Jul 2026 02:21:18 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67472d57bc45899882463dfe90ced7b0a42334edcd871d63094cfbe133f882f4`  
		Last Modified: Tue, 14 Jul 2026 02:21:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4355a36bbb693254bf0649cb49a9ff07f40b7dfb06a745c7001588d7f06ea24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8933bde5de3188f2558e7ce0ac8c7655a3a41c184661d8e16d655cb52f46549b`

```dockerfile
```

-	Layers:
	-	`sha256:43b11848427d684e8983c4bffbc02381ab7afe80ab2c9917c9b81aad908e7536`  
		Last Modified: Tue, 14 Jul 2026 02:21:18 GMT  
		Size: 2.7 MB (2734225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e65ae1d972569b845e29897d05706e5c0dd937a0fddc6a2a71083cf4da711822`  
		Last Modified: Tue, 14 Jul 2026 02:21:17 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:09ef791017d923b35ed9a4516a4f89e117a66e77fff31ecbdb14ba83d1092496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207000093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7870caec562ee40b2ab3f8b387395727be10e4d9ffbe7c3f5572ccbed58edf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:27:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:27:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:27:12 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:28:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:28:20 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:28:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e88e8bbc9067b1d4f2c23d4e83d91eced41b7099ab0c6cadb08e1621f557b`  
		Last Modified: Tue, 14 Jul 2026 02:28:42 GMT  
		Size: 156.5 MB (156461288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f0655ad0aa8ee6be1ee85f5509b8d6efed9f503026db8edfab5ebe3b2cdd72`  
		Last Modified: Tue, 14 Jul 2026 02:28:39 GMT  
		Size: 17.9 MB (17905942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a6fe5b3dcddebb21fcf6cd9328a054e280772acdf992faa86d59aec283e8cd`  
		Last Modified: Tue, 14 Jul 2026 02:28:39 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021a332dedb930667344d65bdd2e9ac9e1db0c2a08a3d88ea17d49c87fe2802a`  
		Last Modified: Tue, 14 Jul 2026 02:28:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:470af13c985180f8cb1568e2080325e84ceca8738294075e0bbd819546b51f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453971f832002ce0d997a8ba7b8ab90bb569556f77456ef01a2c09d61c87a4d9`

```dockerfile
```

-	Layers:
	-	`sha256:7f26469f2442fe8be70b661153a313285fa6c45e4a3db3fb8038156d049fbbd4`  
		Last Modified: Tue, 14 Jul 2026 02:28:39 GMT  
		Size: 2.7 MB (2733840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8977ab2b437f611108f61ab9f9d273af2535308e795123905366320ce524515a`  
		Last Modified: Tue, 14 Jul 2026 02:28:38 GMT  
		Size: 17.9 KB (17893 bytes)  
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
$ docker pull clojure@sha256:321a5d92ac407c87c0d39a77a338251b89e8b3d6d5a7da58d75e7bd142812b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196516983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6bb02901693beec4f5749657164b5080a7595c2754e34fed0f7b7ba845b3aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:30:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:30:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:30:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:30:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:30:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:30:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:32:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:32:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:32:03 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:32:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:32:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:32:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:32:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a100d2c7f7cfa5f96918a276786122767bdb7eed1543d7f6165007a5ca40bb2e`  
		Last Modified: Tue, 14 Jul 2026 04:32:31 GMT  
		Size: 147.4 MB (147388340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd307db4a463a92ba18300545996c0fe6b316af9d550ec21657de53706fdf0f4`  
		Last Modified: Tue, 14 Jul 2026 04:32:28 GMT  
		Size: 17.7 MB (17724714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8fada966a090c12ac90be82638ee6639aed41311a0b65030c5c80f116df886`  
		Last Modified: Tue, 14 Jul 2026 04:32:28 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbde1119c4bd1dcd5aedfad8af5a6b2f92176ed8832b8408bdc5eae56eb15b68`  
		Last Modified: Tue, 14 Jul 2026 04:32:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9d106cf478eac761e1c26b93f3221c87a792c1442b93c663656fc3cc7962e6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e523483ff171035e9e76dbb6f7b459023fec45918ff0d4a31c5b053cc6dd33be`

```dockerfile
```

-	Layers:
	-	`sha256:4469fd31cef945e9fc24924ac88ecb84f1db2e6f3bdb04059e6a29b816867ef9`  
		Last Modified: Tue, 14 Jul 2026 04:32:28 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65c626a8ee0e9f4e2bc6f413203e060a522f0c8c874ab69cda59bbac78198e7b`  
		Last Modified: Tue, 14 Jul 2026 04:32:28 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
