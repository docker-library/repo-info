## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:0a9e27fb359396373cdfab09733ca24449890b68961cec81635a8c7f03372f27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c2e9ee99db7fb216cb778dbca12539b2961b6ebf0df90ac893402d9665f2b795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196922594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79db7cfceb139789a3ed81aeae880e59f2cf07b7de434f4b13296cb477a1f568`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:37:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:37:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:38:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:38:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:38:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:38:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799a4ea84551117ac0bb7ecdef56104ec5b1e2232807d19d79a45568fa1a1875`  
		Last Modified: Tue, 10 Nov 2026 00:38:53 GMT  
		Size: 146.1 MB (146086140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f50f81328ac5b3c2222a9b9b79dc178acfad74f96c5981d2748207d1123af99`  
		Last Modified: Tue, 10 Nov 2026 00:38:51 GMT  
		Size: 18.1 MB (18072368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8ff4b30c19317458dbf6b4fabab37d14c49315b0ce2163fb13a89992f70842`  
		Last Modified: Tue, 10 Nov 2026 00:38:50 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ae722793097bb281c9cdf4ee79cd85bee680773d2223d730df9b29ab744561`  
		Last Modified: Tue, 10 Nov 2026 00:38:50 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5331fb5060ebe3f79899f224528f54d0df47079828eca051782213f80a55f31e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ed9a085b2602b963a669f81b2d4c93344c6ca3da2a58fb6a38cdf4a261af68`

```dockerfile
```

-	Layers:
	-	`sha256:052fdfdf59f436389de220f15caf48a0f2370b98dc57460073d0d6030c837494`  
		Last Modified: Tue, 10 Nov 2026 00:38:50 GMT  
		Size: 2.7 MB (2736315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3406d9c7542597f8281ed56824898bb9ba95b765a69f37f15817c4d99c497ec3`  
		Last Modified: Tue, 10 Nov 2026 00:38:49 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7136c1930864854f2dfbfdd1ea3b82b1c79b4e6f16cab176b5542ab0d77218f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195524052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6d80b992031e363265d881c2b390ae645558f77f635d722e91eb5f7006302f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:36:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:36:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:36:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:37:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:37:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:37:46 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:37:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:37:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:37:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:37:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8840f669b5dd37ea53cf267e322a143638af8f6ea7c37fe5238743f5c1827f9e`  
		Last Modified: Tue, 10 Nov 2026 00:38:09 GMT  
		Size: 145.0 MB (144957202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642c835119c745865b4e67a4e5fb886d575396ae8ff0223b7d269d0142f3772a`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 17.9 MB (17906337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a344f65fdac3a9ad843f4ea181f24be9513f155db284c46fd0e324edb08721f7`  
		Last Modified: Tue, 10 Nov 2026 00:38:04 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f5d6cfadfa80da76b104971b21868d7c26c5f700cb5e214b41c64d4e2db47b`  
		Last Modified: Tue, 10 Nov 2026 00:38:04 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ebb1ff3c0e96ad1347c9f157f30aae4646d0f8540795068cd2635255af47b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e215dcc62113f0a15c08c1e039ba62ea1876952c01aade44e8de0870697591`

```dockerfile
```

-	Layers:
	-	`sha256:69d0e2cf77b786e7fc2728bdddaea3be35813e6421e0885c0e63aa4c444e5b62`  
		Last Modified: Tue, 10 Nov 2026 00:38:04 GMT  
		Size: 2.7 MB (2735930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd60888efc9382f67b5fd5880429235b9aecbcd0ee38e3c92985dc6dc6b9f74`  
		Last Modified: Tue, 10 Nov 2026 00:38:04 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1892461303156bff008953dc9db3bf08da4fb53b67708c25e551129895fe38f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199749767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bb1d79f40c54b361e4073a0aa45afdb77c27db333e31c5ceb75b5fa7f8ff96`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:36:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:40:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:40:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:40:29 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:40:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:26:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:26:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:26:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c4788773bad9745190e690ea7e40a05bdeda3e095aef8b752098a0dbee3e84`  
		Last Modified: Thu, 05 Nov 2026 15:41:17 GMT  
		Size: 18.3 MB (18279589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8cf996b8e6f96376187df006c5544b9b3641570787f57d959bdc1d525dc790e`  
		Last Modified: Thu, 05 Nov 2026 15:41:16 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9610ec1bbc36df4894a5b79ff27a1870bf80f50c911820aac93af0916bd6659`  
		Last Modified: Tue, 10 Nov 2026 02:26:37 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6b1b9ea7c3814c5040bb9d6e8315baf2d6c0e24a519c3ab6c5ef06fe67fe1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f4208e3da39b909401f77095187ab8966a05b72085c41feb0910ab3400188c`

```dockerfile
```

-	Layers:
	-	`sha256:d45c2f3083fb2c431d7ff748589e7e4150c6c4c45713e836be218a4ed8e51305`  
		Last Modified: Tue, 10 Nov 2026 02:26:37 GMT  
		Size: 2.7 MB (2736902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2772c068043720d411b380b8802db950f31df597bd826a69925296b6ae4ca27`  
		Last Modified: Tue, 10 Nov 2026 02:26:36 GMT  
		Size: 16.9 KB (16861 bytes)  
		MIME: application/vnd.in-toto+json
