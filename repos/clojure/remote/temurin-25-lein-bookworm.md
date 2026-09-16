## `clojure:temurin-25-lein-bookworm`

```console
$ docker pull clojure@sha256:ba7d0321aeeb9043946fe16d1d778bdb53cd0e6be7ed2ddb46485d7e1519c9d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fc15fadbe351c45afb0d88bed6e71f453e8267f1e26415fbb59b1aef843c7e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165761891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7e7a60e470897667e6d5aff61b0911d4aff603f34cac1b8bfaa01fcec21bb3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:36:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:30 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:30 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:37:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:37:39 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:37:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:37:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69db2bf46df86805bfad27c32b8d031512f84d09c6e159037f896b757e2c5420`  
		Last Modified: Wed, 16 Sep 2026 04:38:05 GMT  
		Size: 92.6 MB (92615098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd44c0aaf8d9e1d55a04418231d7e345c616d9de5435110130feeb0653f355a`  
		Last Modified: Wed, 16 Sep 2026 04:38:03 GMT  
		Size: 20.1 MB (20133830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e511ce41a6f38401068d962b7dc5ec58b321f780127f943552dd132055dde8ff`  
		Last Modified: Wed, 16 Sep 2026 04:38:02 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2495a5ff2b6c96c064d28b35c15d74002972c5674eb0f999b7dba97398e5ecf9`  
		Last Modified: Wed, 16 Sep 2026 04:38:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:637bebc9deb58958399cab325465ea44c810c235177066e6b90f5c492e4eafc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00234ac73c73e17fd1a21155e7b845d439bd8614a519ff1df9e61ea7a4955c1`

```dockerfile
```

-	Layers:
	-	`sha256:3e8c259f28dba17de9de3f8ef06f15c0f49b3547d713912b2efd408c719a51c6`  
		Last Modified: Wed, 16 Sep 2026 04:38:02 GMT  
		Size: 4.3 MB (4258549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a69867ddde1cd7cab07d25930de084aaf7be855455071f667f9ede731b61613d`  
		Last Modified: Wed, 16 Sep 2026 04:38:02 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d6809fd7a700951b012616a27a836f8f329fe21a2a7ea8a16b73b3650d3a4a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164388131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e54e8bc00e99f941810d8148347546aa9c9cf0026435d4f325ee1dca50e533`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:36:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:37:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:08 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ce65ae3a2c1ad65e5b63d0176d15c27bca564dc2b7c131828f49777e2c717b`  
		Last Modified: Wed, 16 Sep 2026 04:38:29 GMT  
		Size: 91.5 MB (91532222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2f9a0a8c5c7ef63f21fcf9bc5af39ff4658178425a4d6774402df715a18b39`  
		Last Modified: Wed, 16 Sep 2026 04:38:27 GMT  
		Size: 20.0 MB (19956634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b34eca7b2bf98c28fb14152c9f3fa9557fd35b198af052434d74369e3c43ead`  
		Last Modified: Wed, 16 Sep 2026 04:38:27 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fc560c40158ddeb567f7e39a22675a910838907fbc4a2e755510fd0422205d`  
		Last Modified: Wed, 16 Sep 2026 04:38:26 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:682f900269c29b122e08cdbba274db7a56f2faad0bd72518fbb80968bf542f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2030b5e35d66bb41b38a772bf3e297682ae3e9efbee490df4d00e328db7e8c`

```dockerfile
```

-	Layers:
	-	`sha256:250cb77d9ef2f0a41ee319312a386912cc978c86e9ac4a5d7a90067d67f4feb5`  
		Last Modified: Wed, 16 Sep 2026 04:38:26 GMT  
		Size: 4.3 MB (4258233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d690ab18bdcb88b115b1c286e4df9600e4aab31c565904f66b171693a49d67f9`  
		Last Modified: Wed, 16 Sep 2026 04:38:26 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c076e3da8458c9538229e149d611eb0d9122fc0c9db011cfd2cd9ce7d524387a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168461968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efe44b068d69688d665d6ce5b1f2998de1ba08c97293b3546512cf2deb6da0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:02:44 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:02:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:11:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:11:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:11:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17787f631a015fed889a35c730ca329f60ae02a4d8ef800df76a3325020ab9e8`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 20.3 MB (20348701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f854bf7258a3e8cf3c876c36f12a11f4f075274de2df4c65f4ea55f72ec6773`  
		Last Modified: Fri, 04 Sep 2026 00:04:34 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cea0b096d8581caa9016a5924d8cf6ad0c45b74d57f3382e35907e16acc5a9c`  
		Last Modified: Wed, 09 Sep 2026 11:12:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:47990201edd30af4bd7c7e6f23190210b54009c00bf8ae53aa38a7da2fb39e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7b1d07e5416091453a30d0f27d04cd4d1a34454dd3df7f6252cc171a174db6`

```dockerfile
```

-	Layers:
	-	`sha256:0ce5da22539b0361955f738e774882e11b4a239aa879333f3d4fabb171823713`  
		Last Modified: Wed, 16 Sep 2026 10:55:32 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2593bab734cda2a9e8dff1b9bed7167584dec4fd1ef62f50376b56f7e76bf1ef`  
		Last Modified: Wed, 16 Sep 2026 10:55:31 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
