## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:664981ce42ae0077f329293b0f0ea744de044931e03fa2fbf2b7a113425180f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3275e7e7f51f3a7d4b370ec54405e3b295d955e610911d9bec87edb459030e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2b5f67608a252e60d4a2dcfa0fde28964b36001428caac0410172893c59a8e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:36:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:38 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:37:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:37:47 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:37:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625cbbc0feec709bd5446486bcb05299e1051ee3b0d3cbb2b459a271928c334c`  
		Last Modified: Wed, 16 Sep 2026 04:38:07 GMT  
		Size: 92.6 MB (92615111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d256b8873850c66d35037f967c06d07fb85f1fdd373e27236ce830f12f5cba`  
		Last Modified: Wed, 16 Sep 2026 04:38:05 GMT  
		Size: 18.1 MB (18085617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05492c483050b46f3c6dc2788e450d417324142a6810ffc0f10cfd43a97b3a3`  
		Last Modified: Wed, 16 Sep 2026 04:38:04 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373d019a4dfbde999ce79d70065ed476d86a7670d34c13af306a162c199ffd09`  
		Last Modified: Wed, 16 Sep 2026 04:38:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bd6228a2733514f3115b67bbc07a15282200fa7e731af12b9972e591c29d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08618cea2bebd981adfc9cc051a5b0e401798a07525193c62d0f892aabd8490d`

```dockerfile
```

-	Layers:
	-	`sha256:22447720394478a06c2bdd1ea7560a0220c0135ee7372713b93816ad447bd496`  
		Last Modified: Wed, 16 Sep 2026 04:38:04 GMT  
		Size: 2.7 MB (2705632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2728e56a568969c95f49994bc1a1b80993654df6215a2ad5f2ee4fa7b7e5ae14`  
		Last Modified: Wed, 16 Sep 2026 04:38:04 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:841f9d3d56dda8c0d55c4e47275fe796576264a52a75b824aac52e54ba0115e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142072374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d59d22902f9202538f300f80fc8597e7e3ee137964e822118df10563db4768`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:37:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:37:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:37:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:11 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf13f8d7077df3f8c5683b2989b51d1fbc3e8fac6611485027a3a3d0eb78c3a`  
		Last Modified: Wed, 16 Sep 2026 04:38:32 GMT  
		Size: 91.5 MB (91532227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff1802c5f4034f73ec5d1ca88a389866c6f1b79f3da3dd2311e5cf835a9c00a`  
		Last Modified: Wed, 16 Sep 2026 04:38:30 GMT  
		Size: 17.9 MB (17907232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b469ce03d1afa953d5431783fdde93b814a4aa84c8d6ea56af2c2ec5550670b`  
		Last Modified: Wed, 16 Sep 2026 04:38:30 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398e7475e2e1a28726160ed00107d04246d50193a2e0d55a858373f3d5fc1e91`  
		Last Modified: Wed, 16 Sep 2026 04:38:29 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3173a0b437c2e0cc48d0d2010b3451b577d59039e5ae06ad8a9cddc4d0788cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d56363cd567476e09b84c1e6b5adc6cc24535abe9c8881e140b6d80d06ca08`

```dockerfile
```

-	Layers:
	-	`sha256:bf4bb08350da8a6fbaa19ee046772f7d5d069d942585b931d2d7708314736d43`  
		Last Modified: Wed, 16 Sep 2026 04:38:29 GMT  
		Size: 2.7 MB (2705268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06934a26b784c0436760bae70cb6f7d3968bb5f646b4c67dc018ff269c2eddbb`  
		Last Modified: Wed, 16 Sep 2026 04:38:29 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d186e28240df3d5b653cdb127e55dec3759e620d4c85b522f3e8dc8a3fbc060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146127176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1e2727ea0a631e7c67883c9d70112e66513f73caf1442072934350e8613081`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:26:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:26:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:26:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:26:52 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:14:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:14:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:14:20 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:14:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:14:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:14:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:14:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a22fbbfc408dae3c28607d79e00a607cf87f23c89af839c30eb985419c6e0a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 91.3 MB (91255803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73e8a60d202383dc40c83f50adef5ba157b57b3af329722e631f4100f5baad9`  
		Last Modified: Wed, 09 Sep 2026 11:14:41 GMT  
		Size: 18.3 MB (18279227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08051a0ca72d32a8b35b5cb0acef0a25c435e8a1584435a22d36c3e486b35c22`  
		Last Modified: Wed, 09 Sep 2026 11:14:41 GMT  
		Size: 4.5 MB (4515239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597b84b40c6e7e455b68e072d57c89cac53aafe35b2e6040a2eaa60f770e7180`  
		Last Modified: Wed, 09 Sep 2026 11:14:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b24b30d34a1caf64956fedd8550fb8fdf69445a53356d436e033b183455bec0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0260e5ffa1b409ba1c00d7784a28e9de701d1eeeb539a3608d9b1cae8a28a3a7`

```dockerfile
```

-	Layers:
	-	`sha256:366534d6820cf5eaac12b0195fd8e6688baaa2d64448584a062f2e8893556976`  
		Last Modified: Wed, 16 Sep 2026 10:55:56 GMT  
		Size: 2.7 MB (2690789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fab539321ba8fd62e743154dd8e1c6523cc3895c924b37b7e857ad3b4dd93070`  
		Last Modified: Wed, 16 Sep 2026 10:55:56 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
