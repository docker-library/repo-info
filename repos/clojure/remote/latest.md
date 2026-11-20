## `clojure:latest`

```console
$ docker pull clojure@sha256:d7024ca525c3f256d59cb210c616d7f6f3b99e64b969df7cde07c04c51035c67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:4694f7389aee5b7e82a4e6649831b9d3e6b82e775e8caaf048766d7968761f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237865684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb10f8c6fde68e4a9a15032d1224fcba3afee281a869357d417465c5f8fc439f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 19 Nov 2026 22:06:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 19 Nov 2026 22:06:36 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 19 Nov 2026 22:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 19 Nov 2026 22:08:02 GMT
ENV LEIN_ROOT=1
# Thu, 19 Nov 2026 22:08:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 19 Nov 2026 22:08:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:04 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1936ee9b3f5bb6c9d79344283bf39dbe641cb99f05c6276e67ef1ceeae9430`  
		Last Modified: Thu, 19 Nov 2026 22:08:41 GMT  
		Size: 92.6 MB (92598912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930e0f29f3394a948bcc3e42aa3380a9bf3ff361e2003f7fb9a77d9fb3c4ca39`  
		Last Modified: Thu, 19 Nov 2026 22:08:38 GMT  
		Size: 20.1 MB (20132594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066b742654d0bdad4c885d5190a014e185961236d23cc040a2a8f722d49c2b12`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a7860d0efecf5bc903a296a1261d8175a1135384dda24835f7ddf45eee0938`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 72.1 MB (72090915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843c4af98d767d0065bb96bfb37f4ae69421e4fe773dbdda51bd019790b1bdfb`  
		Last Modified: Thu, 19 Nov 2026 22:08:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0085ba3be1873111c193700911c883f91327461d59df2a7390df8d38f52fd`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:2155e19de2543f486bf5bcf560323b40835df5fe58229ea5f9fb70fad55f3fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c1b6f76c7abf010e9d83d3bda0efc6cfac9ba17ad32a7edd1c6dbd807d1a3`

```dockerfile
```

-	Layers:
	-	`sha256:f5deb010158705ea66e31ee818a2001ad20c3ffa8ef31cc7f57c0d29192c2746`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 7.4 MB (7439683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:644a33dabb39485ee517dc34c85884c201dfdc51e9d048c23ccba078c7195dbd`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0eaf3116677351c8b625e78ad8c4226cc713f057c07b711083b0c0b0592be03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236692797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2117588c8a4b87e3f61e18c2e40a3cb2d3581cb1ee754aa0ea802d227a6119`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:04:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:04:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:04:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:04:12 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 19 Nov 2026 22:04:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 19 Nov 2026 22:04:12 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:05:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 19 Nov 2026 22:05:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 19 Nov 2026 22:05:37 GMT
ENV LEIN_ROOT=1
# Thu, 19 Nov 2026 22:05:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 19 Nov 2026 22:05:39 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:05:39 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:05:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:05:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:05:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:05:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:05:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c378beb2eb6fdcac7ad74620f4b303a008a3ea8313011730f537a731fb7f9eb2`  
		Last Modified: Thu, 19 Nov 2026 22:06:15 GMT  
		Size: 91.5 MB (91525624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15452a79b9f06ca47cc77da21d0f53c2af801a692d020e1af0258d909b4d6b71`  
		Last Modified: Thu, 19 Nov 2026 22:06:13 GMT  
		Size: 20.0 MB (19976540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2936b016f1af22f7e37a67803a9953de35d5ceceabf1d942eb2253d58d14c8d8`  
		Last Modified: Thu, 19 Nov 2026 22:06:12 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e27b3bda28cba5c4e2d7a34bb01779cc4db4242b6e84eaadfd61e2377756ba`  
		Last Modified: Thu, 19 Nov 2026 22:06:15 GMT  
		Size: 72.3 MB (72261407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f6c7b631912e0f6ebb2f2c9166f3c97ce6d85b778cca318cdb73e6e9768f37`  
		Last Modified: Thu, 19 Nov 2026 22:06:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b35da19617e6e14309aa2bcc5d32a9188ac8340358b7a9281bb191020eed3c`  
		Last Modified: Thu, 19 Nov 2026 22:06:15 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:7facb83a12fa85821afbf912df48de8e953f3be43ece03cf5135ff136e7efac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95778dbfaf8fc3cfc9aa1aede6bae5e6fe3925552efb45bc97e9e7e15d763c9b`

```dockerfile
```

-	Layers:
	-	`sha256:fc4144f33d138fbee03ae55e47662cfa18719a96dcb34d952a9a316299509469`  
		Last Modified: Thu, 19 Nov 2026 22:06:12 GMT  
		Size: 7.4 MB (7445419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf4abb3e2091fcb1bb5c31f0a470385bcdca7ab6c5e574590bb406b8becbd9e`  
		Last Modified: Thu, 19 Nov 2026 22:06:12 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e558e870d4ece8bb75d64b2f2e18d367688ee3251ce75d60354435dabf5f3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245060093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c569c3fc8b0f8d74cb892858e70a915f0481d2d9610ebbd0f56483d25002fb44`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:18:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:22:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:22:08 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:22:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:22:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:22:13 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:22:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:22:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 01:48:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 01:48:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 01:48:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e811e2ed4773087153cb51d918d4412ad6aae87e34a833e2a78b59926760328`  
		Last Modified: Thu, 05 Nov 2026 15:23:45 GMT  
		Size: 90.1 MB (90111651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad066384a348f8a26f745f09feb2a1b1306991996b622986d9719e5da17aeccd`  
		Last Modified: Thu, 05 Nov 2026 15:23:42 GMT  
		Size: 20.4 MB (20357031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e1a6573c131c5c0ff9a1f6a8563f1143b169b0a7c838f9cc46ba57a2538316`  
		Last Modified: Thu, 05 Nov 2026 15:23:41 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd59468b2a5b09923230e43ce3f59d9011f61ee6d1198bb4793fdae1fdf3039`  
		Last Modified: Thu, 05 Nov 2026 15:23:44 GMT  
		Size: 77.7 MB (77705997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e4e0e45839882431bccf4bce8ac2839bb30f1b5d033b23c4b6624db33f7b3f`  
		Last Modified: Thu, 05 Nov 2026 15:23:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7ef8c4762afed8b6029eaea9dfde12a862c6e876f17c4571cac84054b0b989`  
		Last Modified: Tue, 10 Nov 2026 01:49:09 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:70cd63a3c0a50b6457dd400f228c3f3f102df79cfeb17143994c43583642d3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e8855890138ef53ad55fafba0d766d5540b00bdd6db5e7c2089306926fe47f`

```dockerfile
```

-	Layers:
	-	`sha256:9d9cec742d627e367a112eb07d0996bd27c255be6025b33579475b769255eb82`  
		Last Modified: Thu, 12 Nov 2026 07:35:52 GMT  
		Size: 7.4 MB (7426332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bdd079f07780951f8c466d5eb3f1bd81fb4bd1ef63d4fbb7677fde85ef3fb83`  
		Last Modified: Thu, 12 Nov 2026 07:35:52 GMT  
		Size: 25.0 KB (25013 bytes)  
		MIME: application/vnd.in-toto+json
