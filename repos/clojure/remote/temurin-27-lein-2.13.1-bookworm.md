## `clojure:temurin-27-lein-2.13.1-bookworm`

```console
$ docker pull clojure@sha256:7b6e9c30abfeb15340334e90a9969cbd032bcbdbc3a39d3f8889b412cfd4f1de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e40b07e62868b24bc29cf8980f5cda2ead2215a5839d2dc78c3a3d0091df2c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166824584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd510bdc6f872708175fcf93844ade52eb50c904211b59368038d910024ad009`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:13:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:11 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:11 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:25 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99371b2f1f7a7ed7dd74e81145ebff3dd5da8741a71f66957f75b1c415c02104`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4869568a2dd61a0dc1cf07126b301ad3f89fd8d7732f10a04342c0f880035d`  
		Last Modified: Tue, 24 Nov 2026 05:14:45 GMT  
		Size: 20.1 MB (20132436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05685248228be0d16984558a156135bd58d64fbda0ec9cd26294e886a75c362e`  
		Last Modified: Tue, 24 Nov 2026 05:14:45 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af88ab6888a87b05d40caeedadb5eab19f146d67e76d526f1c5d364098f3322`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9e1fe49ed08f5ed22f636d3aa9b1aa3e3dcefe3802e28e8d9214d5d8cd62ac7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490f44376fe204e41d5300b0d2aedb44b8debd7b52671e7aa714a38054288248`

```dockerfile
```

-	Layers:
	-	`sha256:59a23d716631627bf8e27d47c096c596c4addcead084a3f808b20daffa2e035f`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 4.3 MB (4252300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07df26d5c1e2e775f3bdbed534cec46ea02d27cf08e5bc25f251028a9fda3810`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 19.0 KB (18976 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0a5d58ff17abf4b520d8600f8381e1b7d4eb48678637f7b7bda196f4ba869f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169174469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91eca701538faabf85f74d55bc5ddd1b605528681592578c02665b8b93a32b87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 13:08:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:08:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:08:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:08:35 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 13:08:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 13:08:35 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:11:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:11:48 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:11:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:11:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:11:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:11:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732ff8f4ca1196b65fef769c8e14593bd1aec841247c097cf9f07f3eb8f9ab45`  
		Last Modified: Tue, 24 Nov 2026 13:12:40 GMT  
		Size: 91.9 MB (91933328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e7fb76a71d1f1e1551633826e23dec750fedff25e07d08a1f0dd8f41519664`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 20.4 MB (20356474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d24e3300008c535f334463390fbdfa80657aca1d1decf85121c5767a8d5f96`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ba749671d6ae3061f67c9a500303b0041c671e6a193a3d9890d2b6f832f39b`  
		Last Modified: Tue, 24 Nov 2026 13:12:37 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:397aaf4e72b81bb777d378e7713f7db97fb23c26c6757e6b1d9ba72a7eb2ddc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d8e7fad5366feec68a902737cbe08f793891b8788d1fa69e8a39bfcbf12738`

```dockerfile
```

-	Layers:
	-	`sha256:28af4c5d16eb0a6033f6c72803535d434478aa2a5f152b4484dad389c22c7338`  
		Last Modified: Tue, 24 Nov 2026 13:12:38 GMT  
		Size: 4.2 MB (4236248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:421ac9cdbd778a1ceafad586019116325827189e10da4dd1c3ba4144cd6ea943`  
		Last Modified: Tue, 24 Nov 2026 13:12:37 GMT  
		Size: 19.0 KB (19032 bytes)  
		MIME: application/vnd.in-toto+json
