## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:3df0fb3760b8f405b110c3899d9812082dd49bcbd54c3d172df22f14850ec604
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

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10f4d6bdeb74f2bace0d885e44d128974ccb9093b5d120fe4fa780e7292631c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196936851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b2ed0f82f0e8d73cca732cef9d72a27db7ace885e0961e95cfe304afbbc997`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:19:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:19:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:19:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:19:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:19:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:20:32 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:20:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:20:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420ae58d631e55b941da678725ab8d3a746b523c1a2e0901338c762c4ba90cd5`  
		Last Modified: Wed, 05 Aug 2026 01:20:53 GMT  
		Size: 145.9 MB (145886290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fcea4dbf2ecc8b51a5b65f4a2bbc6df3cf48158feb91cb7a157fde574c904f`  
		Last Modified: Wed, 05 Aug 2026 01:20:50 GMT  
		Size: 16.8 MB (16754556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ee103a98ecc8328083e3057f70923f21569443725dec58f048a5c7c62b6e13`  
		Last Modified: Wed, 05 Aug 2026 01:20:50 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:775681726e9fddc0b72e1773a9a165bba132cbe23e3cc3a626a35855c3b1b0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37500fcc307e03b214f37a8011326321f8625c6284f233b65e1bacda8da46964`

```dockerfile
```

-	Layers:
	-	`sha256:5f56f7233060de783a39f8104ec36fcc65bf9369fe886c45e3ddbb09e2a28705`  
		Last Modified: Wed, 05 Aug 2026 01:20:49 GMT  
		Size: 2.4 MB (2386633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48b292db96700b1d744cb52db324da569e19d2a8b1de26bbc7d6527f466d0fe`  
		Last Modified: Wed, 05 Aug 2026 01:20:49 GMT  
		Size: 15.8 KB (15763 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b58e841aad0ece89dd42f28e3f68287b9a60a28c34c5bf2eff7be07e25278247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193952805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51b4007aaabc2695f64e195bbdf2c11cdac48fff4e4b088da6d0e08413b71cd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:11 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:11 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:28 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e310b2c6cf0d131e307b0d38c558b996c3eaece8650b344eec1e889596b5451`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 142.6 MB (142582297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bddb17fa2399ec1ebb729fae7cab25697c4078ddad734992be0057c1a5e33a`  
		Last Modified: Wed, 05 Aug 2026 01:26:46 GMT  
		Size: 16.7 MB (16711677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26281d9c355d464b1ea7e89d92b55d378da88aebce47ff78e22a083a39fd70c`  
		Last Modified: Wed, 05 Aug 2026 01:26:46 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cd43380a65bf40efe9e392d7595000c75d6b83ff11aec9943400cc6475173713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15b69e099ec1c84ba74454edd2fd7654c7c0451a1b9bc843309d95785dab97`

```dockerfile
```

-	Layers:
	-	`sha256:b25b2786d3dbfadcfc10beeef07994edb0e66c3b36bb7633c7cf6fe97dc03dfa`  
		Last Modified: Wed, 05 Aug 2026 01:26:46 GMT  
		Size: 2.4 MB (2386861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef32cfd05ed444d5f0944c4194671c9e385a3d25a67c4efca355b91ef7967b66`  
		Last Modified: Wed, 05 Aug 2026 01:26:45 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:551f2f33e65df5bb4e90486bdf4ba5adf5d92c7e1b3da0dd6ffae12ff3d19463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188008278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340b0e6a706e1b67219a4659d70d33f22c6ccfde152c990acde50341df214bb2`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:38:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:38:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:38:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:38:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:38:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:38:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:41:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:41:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:41:20 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:41:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:41:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f1fa50994192341729fa2a84fe83ea806e228e6161f7355a8cce95ef6641bf`  
		Last Modified: Wed, 05 Aug 2026 07:41:55 GMT  
		Size: 133.1 MB (133109642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e0146dd6b16fe7118c5c207e2e208032923ab33f383e54d34cdc4fd4cc0b50`  
		Last Modified: Wed, 05 Aug 2026 07:41:52 GMT  
		Size: 16.8 MB (16782055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0244efca8636114106b9807fe8a7a5ca4c365351368074385c41d7e60e2ecfc2`  
		Last Modified: Wed, 05 Aug 2026 07:41:52 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:992d50f097e67495b8df7f917b0b7aed30139068521aa574e5105f7ad9a60bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac6c2014cc5cc9946dd1ad758cb2a6ed7804e4abc3e4bcf69ddd6f0445f01e6`

```dockerfile
```

-	Layers:
	-	`sha256:f44ddd34ae28dd61bfb864ed53ba4ff738e449a9819c50bd220077618f5c7cc4`  
		Last Modified: Wed, 05 Aug 2026 07:41:51 GMT  
		Size: 2.4 MB (2386998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c73ecb1db99eb5c92630457baceb6e423379992bfa6f26557cfbd10a920480a`  
		Last Modified: Wed, 05 Aug 2026 07:41:51 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:a66fa3f0fea1fca39dac3b663fd5c8a0d1509d11d50f7a6b34b95740f4dcd605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177793845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167f35eadae05d93c0816d34f2d723daface225603480aee595c62b102f59909`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:44:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:44:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:44:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:44:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:44:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:44:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:45:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:45:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:45:54 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:45:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:45:56 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32bcac27d4284e15c917725b631091e0199626857deee62b199d2d71969df6f`  
		Last Modified: Wed, 05 Aug 2026 01:46:20 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0115dcf3b5689404457a17b000724025e35b8c622d18affea842a6a6dfa54040`  
		Last Modified: Wed, 05 Aug 2026 01:46:18 GMT  
		Size: 16.8 MB (16779625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ccb44a46fbd0380a3120dc9b1382d0265af39ab2eff4bf4565a512972e9704`  
		Last Modified: Wed, 05 Aug 2026 01:46:18 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:86f35188812c0e9d2eca0dd92f3ff861f1d9284667f01a5f8b396c04dc6af995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b42f2580292bbed64884a391c3d87fafa218e5ce8a0e0da57447107438753c`

```dockerfile
```

-	Layers:
	-	`sha256:7f9d2e7ea7d4d48bc0fddf8894d8c2962648deee8a846c29d1ea04a7384f486f`  
		Last Modified: Wed, 05 Aug 2026 01:46:18 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:952b20d8b5d64a62ae2a125527c2496147cddceec8197f0e647339ad26ef259a`  
		Last Modified: Wed, 05 Aug 2026 01:46:18 GMT  
		Size: 15.8 KB (15763 bytes)  
		MIME: application/vnd.in-toto+json
