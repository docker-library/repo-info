## `clojure:temurin-25-lein-bullseye`

```console
$ docker pull clojure@sha256:a04b6b8c00c580327935394d4871cb232278a6967b9519f3ccc8998e46e72b41
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:697261daf220552b611191cbf0907bd5ae6a9191a44af9152c6303986cb2ef5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167803107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffc66d53c03f01ff0fabe696bf05a090b30132acac245a767366905d45bdb4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:19 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:23 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925f7c79111649ba90f63a6245310a48456114ff990b3b75981636a1b55488a1`  
		Last Modified: Thu, 02 Jul 2026 05:55:43 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b8a321b243350bab72b90b1225c72684faf972d8414338cf7418d3796b69e6`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 16.9 MB (16939919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47cfc97dabca0f7c43bc27e2df64066e55487d3e82281b232a56d0decd2cb82`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc25516dce0abe23a064266a6f6f0031d379eeb507b67c7f79dac2391bc21c4`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:15ffb86ffbca50e7192128154b64a3caae2cff09704ac9d95e7cb6e5e1e77cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ddec5f76bcdced804631553c0ba625e8806230415b11e5a491015dd25f4e703`

```dockerfile
```

-	Layers:
	-	`sha256:eace93856cd5b0cb6572e6f6021bae50e5bf7361d14919ef4b28c2d14abe430f`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 4.5 MB (4469063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98f49c75cc5f7b42bd363aa68e29031655054f260f7555589e8be0eea77b0f24`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 18.4 KB (18373 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:739defd27d3e71df9f9ae253a64421d598f8f47fd62a733b527f65785b7c9490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165232908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f2cbee9e63d97574fad090d2967e1b37eecd865b28dd7d8007c0714bd6c6a4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:39 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:50 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee69b9ff91f07652b39f2b93e9364d1c241cbf230bc50b4ca73dbb3308f6cd2`  
		Last Modified: Thu, 02 Jul 2026 05:56:12 GMT  
		Size: 91.5 MB (91542269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0823c81a16df0bc24985a827675254efebec4a0c2e2073bacd512da3cdbb62cb`  
		Last Modified: Thu, 02 Jul 2026 05:56:10 GMT  
		Size: 16.9 MB (16917816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c0b6e13ed2401f7325631ec9f73bfdb54961d56cbf0c7b86d3db1e2bc4114a`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102d96fbd880e0fec7239e250dd804b688009c881c55919a136150263f9074c7`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c2b421749e281a4cda08c3e35d638b72469da879b42dff34cdef6a0e54672354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4486576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ead24ca04a895bd977cb570e64e83b9654372fc234853171690fc2db3a836`

```dockerfile
```

-	Layers:
	-	`sha256:ba6999c64fe32b365251d79ee997ec06cef420cf56113a57c4af178adaca2863`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 4.5 MB (4468058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48b6f5de901b58063d0965f8b4c02fcd4dfa39b4451e796ab42dadd1de1747c4`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 18.5 KB (18518 bytes)  
		MIME: application/vnd.in-toto+json
