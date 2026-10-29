## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6271af08d23db3550af97dfc0a78ae7c0d2ef2d6a2e48a73fc7cdd7d506e1691
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f709a6233860123159bc476dc4258ca9e7d4fe0dab7c73209d7d628bd4bc0e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209244715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a61f6da3ec9a3d9063b0e61b66f3d68d5a4b38a2e2ebc8affb08dc18a59f4b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:03:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:39 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:04:48 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:04:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:04:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf295b1ceff2a23e860d95c12586d8c2d8a47535b32816f53883a26bc9ff5737`  
		Last Modified: Thu, 29 Oct 2026 20:05:09 GMT  
		Size: 158.4 MB (158409463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb5e5468803846972fc7bb502df64de5ea2d5d996ee591429372bebe4b1f013`  
		Last Modified: Thu, 29 Oct 2026 20:05:06 GMT  
		Size: 18.1 MB (18072199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634fd47e7a1b5ff87c1e2bda2fc91bbff083ed94dd519c50ca6fb473fa52d8b3`  
		Last Modified: Thu, 29 Oct 2026 20:05:06 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192664135398906ff497fead4687733579f6051a7086e37b417d74b0542e356d`  
		Last Modified: Thu, 29 Oct 2026 20:05:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e05b43346d560b3c9592a063d580963aaddf100af2f1817e35b1c7d28c6d24c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce18bd751b72b0f6071d93e67a17aaef4558ba9387787da275e7333efc5eec15`

```dockerfile
```

-	Layers:
	-	`sha256:c4e6779e7f753c16ea7d6fe9df36d2cd2ef6f02a73b82687e283e374d3a8e96b`  
		Last Modified: Thu, 29 Oct 2026 20:05:05 GMT  
		Size: 2.7 MB (2738167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78df27d335447c6a8a19cfdbe6a6d1beb5789bf43677e8f1de0d4d0f0c2cb758`  
		Last Modified: Thu, 29 Oct 2026 20:05:05 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:941439884e96fbe38172e827c3a8db406a3ef0733f76d47b88f372d881b51887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207262021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e680d43e7570f18d319697470a8611846d7ba23bc63fbdda30fe6e914d1bf511`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:24 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:35 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178996b7726ddbdebab6630cdde94dec4dcd68a94d4bc7bf43b4eebe04d3513f`  
		Last Modified: Thu, 29 Oct 2026 20:05:58 GMT  
		Size: 156.7 MB (156691656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c26c86524385a40abbce4f57059c2534d5cbb4d83f80c577ecd7cc18fbc667`  
		Last Modified: Thu, 29 Oct 2026 20:05:56 GMT  
		Size: 17.9 MB (17916781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241d8bbe416b38a04dc7f3fc2e30ee35ce4af6a433a866b0ab0910e4f358bbd6`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f120fc96cf4d3b1bef1ca494c47619a1e399b90c860bc14ccb02cf24cd2e2f0`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:32179f2e9c3e5bd3ac94e2b315cef24a40f65c8cb73651039c9f0f98b54259aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b9ce44bf75bfd5f83f57af533797a726eeaaeafe59bcf6777d297c341112be`

```dockerfile
```

-	Layers:
	-	`sha256:2fcfa3b07392d25072e153b3517af0ea60c98a80a18bcb15e4b03d7475e75296`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 2.7 MB (2737782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3d3fc06f7b95f9d387d658e6f12305fa48d66f30ec9465a72b28d1d344b4d0`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:eaabf4a675100e43ba88a98d01935cb8edb55127967c76d7e517f1e0bc7637e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212461497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fe6e4986e73eab4e0d47b2aab320be5c7b708e53497d76985159ab4d549679`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:33:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:33:19 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:36:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:36:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:36:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:36:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:36:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6762e34942ae5aad8598700bf20d6ad9a3ad7d4fa664b90fb8574adff622c7c`  
		Last Modified: Thu, 29 Oct 2026 19:37:38 GMT  
		Size: 157.6 MB (157573298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846eedcbe90cfef620a75dd74c48de9863858238969724a824116d125a349d7c`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 18.3 MB (18279696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3715fdebecee5e34ae4ee3396d1b759e89fe9b21dca4676631b60b35f59b2b94`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379cc3bdfff0f5e917a2340c527709d5f5ccafe9e96073cd9a58408065e92565`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:247aea0497b0ae4a29a4daefdfb949597e9f4de4b59aee27203b91f8c448d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abf8fe63c04d078485d4fb8df34ffe056ca0d83f7d58953b73165de38a008e1`

```dockerfile
```

-	Layers:
	-	`sha256:5dfc04530b19cecc7a6d1833090730d66418e0053dd20206c344b0586d4c3789`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 2.7 MB (2738754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e49639764b4d1ab9762ad061076bd531e49c62510b177d2c50bb74947c65eb`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
