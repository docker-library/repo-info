<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.23`](#kibana81923)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.23`

```console
$ docker pull kibana@sha256:0848721d19f6277495ff1ee0b7c46d274dd1e9b644924204375713a81a9823dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.23` - linux; amd64

```console
$ docker pull kibana@sha256:14866a12c15358a395895a6bf994099da5d0b034217270a05f5ffc742a181b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.9 MB (461880499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3495d6265f55865ad531a5816e002ab2c6cfbedcb0fb89780e9c26cb24d32`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:50 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:51:33 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:51:34 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:51:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:51:35 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:51:36 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:51:36 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:51:36 GMT
USER 1000
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594dad02f1ae2f1b9da7e1627972d3175f328eb7e1076d41db5cba36dfe94dbe`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 11.8 MB (11824554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b1e84a10d42edc0febe4d979e0660b34d504caf07d9751f1251309b09e151a`  
		Last Modified: Tue, 06 Oct 2026 21:52:46 GMT  
		Size: 403.6 MB (403647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9ff19a17960490e02bd5689b8b9349374984126186ec90cbfa0d50f29a82e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c7aa7bc37981ebe0a26239cb491a4c0abfef41f35f4f945710c9845293d20`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac54e82dee80888240c24ac09741e242bb25d24db2aeef409ed29aef65f985c`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e237576ae19bb7388ec67ee7c2b949cd74f6be18d37d6ec741fa9b0f79c213d5`  
		Last Modified: Tue, 06 Oct 2026 21:52:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1a9a58ca77fb001f35f37930abff36d733bab8202c7c459b9c310ff93a432f`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ef90cf3595782e5e552083286e4c50307bb15caa797d8eacd58092f7920018`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b9e3522b237bb3c5127116bc8ef3bbc1fc8490cabebb59d286271f695a9b9`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd1f33cc47487fd1cd84cad0247c1429097d7741eb5bcce6ffcf6b593c648b`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d3751e554fd6a372b40629ff716d098c53fd7d05d6aefc378e3795c10e65ce`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:0f371a369d9bd63daa26e5c548a36fb3bf21ad85cacd95ab64764ae842e37dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4925902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150966d969d3f8f3eecc050c2f26d0d76d98deedd010aafa48f971428caae239`

```dockerfile
```

-	Layers:
	-	`sha256:95329a2f3f9259d16c6523b83f7cb2fd7c9289784a2745fe0fca485a04db23e0`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 4.9 MB (4884975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fdc0ee71699ce0f599aed8e69cc2b1a092648ce408741b6ca63aebb593bb80e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.23` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:88e412e0e14fb2755769abd8e2b22c4f2f9c663df3acd15a9fa80757a9086cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.4 MB (474384649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bfe519cd8a3a073179f379c8032d9ccf0cf4ada40b80f06931766fd0b9a615`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:27 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:49:26 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:49:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:49:27 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:49:28 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:49:28 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:49:28 GMT
USER 1000
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad3ff031444faca8aa5fb10cb6ee32025996f54ece6210d7e2347de52c707b`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 11.7 MB (11701004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d94f74e7083f2a8d647d039e1d7bc8b02c95abae8642923334f3bdbd1f019f`  
		Last Modified: Tue, 06 Oct 2026 21:50:43 GMT  
		Size: 417.1 MB (417103468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653f20881f1976eda44dca58c81118686e5c2f350f3cae00d1704fae457b41bb`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8da12a805322f3fa0783c2d6f90dbd322104ceb62600a979bac650ae2d6032`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afe2c75b9e301d308ed8aadda2309a854a645b5c5564bd7f93e765cb8fc01f3`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 5.2 KB (5244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27633739b043cd823141c5121daa0f28241238224f8fb230ce9ef1084ebf440`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3204c16753d47f7fdc81434752ccb5e85954d16586c87b6e98d5820c22b0bb3`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d02f1a13fc45e03e56c44232b0e2cd30e97abee1a171148107c6d74f8bc4b0`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 4.8 KB (4823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2adcfd49f08bb60702c73d755492964a5089af1b8c6bb1e832e55554c704fa5`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc55c25200c871a1f832faded80d00e612cea0e64012ae5aa83aecc91a08379`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954137a9d4ad16c0d0e8790a3402c4981c663ca2e5212bd6ecee322f85791c2a`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:93311e745c4e785ed9f1f59f5ff49084a395537e2f23800a091c2b92f447ff30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4927214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a99e199e09416a2aff2cc627447ff3401432125dd77df11effaf074e08be8a`

```dockerfile
```

-	Layers:
	-	`sha256:4c3ca259c4655d6b78261e4cd22331a9a8c4dfae0ccf418cf13dfa218e9fc975`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 4.9 MB (4886039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08de90cd117921e6d22539c69c3d0ecf0849c7c25dcda1240fb622edc0a10c2`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 41.2 KB (41175 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:117e906a683c7f8d28ef2349e565cf531a9de43e260a14d03ced7cf2443994ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:038b9348af1403d656a5be8f566a7d441c80163cc24af49eaee2f03b50727535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.7 MB (545667524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba508c1b6f004a70ce298d00b4ebeb43007e75d2a764478f00572f08a0bfae64`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:49 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 00:35:49 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:45:45 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 00:45:46 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:45:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:45:46 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 00:45:46 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:45:47 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 00:45:48 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 00:45:48 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 00:45:48 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 00:45:48 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 00:45:48 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:45:48 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 00:45:48 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 00:45:48 GMT
USER 1000
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b244dc2d8d6d4a56aea2c6d87623b5d232bc6d22408ee3e5fec1951483222adc`  
		Last Modified: Tue, 13 Oct 2026 00:47:05 GMT  
		Size: 19.3 MB (19314746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9ee76c0f9938e226ddb57223983a1601b6e3a93c8a5dfde993f2aeb2027e98`  
		Last Modified: Tue, 13 Oct 2026 00:47:12 GMT  
		Size: 469.1 MB (469062631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59b5d09bbfd9ef231e760a7d81b07d383ae3e77d45e97dfc7d33cec9bbaf6a2`  
		Last Modified: Tue, 13 Oct 2026 00:47:03 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa068746ccdf280588319a01475fc868486400e221e1638908c0fbab86b4099`  
		Last Modified: Tue, 13 Oct 2026 00:47:05 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594686565cddd9adc57792680158a8407ff8231af272aec8fb052f0af58e9c4b`  
		Last Modified: Tue, 13 Oct 2026 00:47:05 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2645e779b080232d66e21760af82c5c8a9d23a27b8785e8761784bde66ce0683`  
		Last Modified: Tue, 13 Oct 2026 00:47:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82f7d737b688883af12926d71d706553a34861ad632f711e4f226692bfed2a1`  
		Last Modified: Tue, 13 Oct 2026 00:47:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f7b28be4d9b4655b24727e00e377526f4859d66b293de2027733c3a2dca020`  
		Last Modified: Tue, 13 Oct 2026 00:47:06 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e4df8f7eb0f5aa015b175c7600d7de47c37fb6486e8270f821254a76ff3ad7`  
		Last Modified: Tue, 13 Oct 2026 00:47:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14fc6c7c8bed2a50e2af34f9c80785fd9ca2efd9a4419c869d5517e1976151ed`  
		Last Modified: Tue, 13 Oct 2026 00:47:07 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693d9e0a2108897a1151982bc3d26c614e6d397a3db8cf18e38715b27b1f9d98`  
		Last Modified: Tue, 13 Oct 2026 00:47:07 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb4465ec0154691bce47a0de09f7685dc09aac12beef0fdfc29a33f32bae022`  
		Last Modified: Tue, 13 Oct 2026 00:47:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:04cffe49230b130ad33651d078517fe85f78924fe46251824a465539b09bbbf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5920277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7699d03992adeb4a54530ef0d1a36a3490b0fd6b3ee730e2ece787a627e74e0d`

```dockerfile
```

-	Layers:
	-	`sha256:e7a996e147636538aeff629012610f300523a25398d3d74151978a7530ab6c45`  
		Last Modified: Tue, 13 Oct 2026 00:47:04 GMT  
		Size: 5.9 MB (5877052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e7ef72ca8a2905ca80bf45efc4eb15cf9d15d9f7f31622f903cd4dc49380b1f`  
		Last Modified: Tue, 13 Oct 2026 00:47:04 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:b24648924ccbc57de37d50ec3d985be6b284105057a98642a186e4b66d512c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557132856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33f7640e9d13f8bc0127465b9d050a97900b057938292e2a34cb484a64a8bfc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:53:49 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 00:53:49 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 01:01:59 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 01:02:00 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 01:02:00 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 01:02:00 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 01:02:00 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 01:02:01 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 01:02:02 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 01:02:02 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 01:02:02 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 01:02:02 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 01:02:02 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 01:02:02 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 01:02:02 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 01:02:02 GMT
USER 1000
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f807f7924901d1ad6ff8331a9c7e92c70162b2b290297a8fc8f73382d940a9`  
		Last Modified: Tue, 13 Oct 2026 01:03:24 GMT  
		Size: 19.3 MB (19256655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a086564086fc0047488e1e0975bedbbb5aa8ea9d76ef455cdafcc2221c06df7`  
		Last Modified: Tue, 13 Oct 2026 01:03:32 GMT  
		Size: 482.5 MB (482520516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88a88bf17d263596417b5bf465972025327dca5da13a7d902b706d89461268d`  
		Last Modified: Tue, 13 Oct 2026 01:03:23 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103c94bd49cb6397046f1a5313fbda0a610089bdeaf2236ae7a8affda084fea8`  
		Last Modified: Tue, 13 Oct 2026 01:03:24 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb05389ac104055bb1bfc771cbdec6a671331c691a7966e6e9222f417f47348`  
		Last Modified: Tue, 13 Oct 2026 01:03:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea24d312c8a64f19a9207ceb4ac6f53f9cf070f4eaee6ec0cc579a421407ad2`  
		Last Modified: Tue, 13 Oct 2026 01:03:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627203403d11b6f2002765f01e6612b46ade8632e346eaf40ca7e002a40abdea`  
		Last Modified: Tue, 13 Oct 2026 01:03:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0716feccb6999954964f12b6ee13825fc48211881a94a0a2e1e51e6fc19d6429`  
		Last Modified: Tue, 13 Oct 2026 01:03:25 GMT  
		Size: 4.9 KB (4925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73a042a5cbda8256faf9517bf30aca5b58dc138a3952cc137fd258ff65733d4`  
		Last Modified: Tue, 13 Oct 2026 01:03:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0ff6b6d3d53276e32d911eac11db9caa11d165d7f6aade3df16d2b482a1619`  
		Last Modified: Tue, 13 Oct 2026 01:03:27 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397bc0b768002ab5c54b7f81221d22b5087a343747580327f53d7db8b5643098`  
		Last Modified: Tue, 13 Oct 2026 01:03:27 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0391d21819cb32c7bfb6e031f6eb2948e8a4c5840093d1011d8ce07df5a6de7`  
		Last Modified: Tue, 13 Oct 2026 01:03:28 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:fe05720f9a19d44d03b5fd4e32729c1838c3b2602f250d62805dfd1a1bd3c149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5917425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bdcad812e8d48e435f404fb10eac265e9b0c9699d525055c6c00f31ae6d066`

```dockerfile
```

-	Layers:
	-	`sha256:df9d8a0537bd6f8763db1c41d4959d1c04f2c2f63376ed1629d86a78cc6a2787`  
		Last Modified: Tue, 13 Oct 2026 01:03:23 GMT  
		Size: 5.9 MB (5873942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b682d24b12c62c84a43d37aeebfecac63b64601b6f75f5aa8d318ee0cc4de5`  
		Last Modified: Tue, 13 Oct 2026 01:03:23 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:39e8a78a9cf0d00c569630d19edf6c97f9a8f5476fc23021a5645a4593e99607
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:33b3df9a0b0dfe52e03432f6a65147714df367d3f3ed24fe14400a912189ca8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.3 MB (537305638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb3deb776768616c2aaa8e97043331967d0e4ad03cdcdd6ff839242cd239db5`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:56 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 00:35:56 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:43:59 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 00:44:00 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:44:00 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:44:00 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 00:44:00 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:44:01 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 00:44:02 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 00:44:02 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 00:44:02 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 00:44:02 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 00:44:02 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:44:02 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 00:44:02 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 00:44:02 GMT
USER 1000
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9357cdb8c80e927636678fba194bf79a78f74e78b7e151d3af3c0b8245c490ea`  
		Last Modified: Tue, 13 Oct 2026 00:45:08 GMT  
		Size: 19.3 MB (19314806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caeb890e80070b77d3a81920ae8901a4f07094052107722e5eab930f7878b138`  
		Last Modified: Tue, 13 Oct 2026 00:45:16 GMT  
		Size: 460.7 MB (460700603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce4490177043cd50a67e5c8e069a0d40ef84a64447b257d96c41c354f2ae3d9`  
		Last Modified: Tue, 13 Oct 2026 00:45:08 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a27a3e9c8445723347c7378f315e336f95e5756ddb6e91bbc2fa3d13aa6517`  
		Last Modified: Tue, 13 Oct 2026 00:45:08 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4371c0a51715b06f92b8d07cb0d7eb4a7e82bf4e725ba9b68f61f6c62124a780`  
		Last Modified: Tue, 13 Oct 2026 00:45:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7ed5719cd420fd1d88d1af4e0cb00a83a27dbcf0d1224269184f392d84c79f`  
		Last Modified: Tue, 13 Oct 2026 00:45:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93721a2689e5c1266e17ee4d49003839311fed125cd3577e80e9c61f6b516760`  
		Last Modified: Tue, 13 Oct 2026 00:45:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d6409f82b4ccab33f240fca246303c87ae6c4e93cfa43e6e06c7c238960c4b`  
		Last Modified: Tue, 13 Oct 2026 00:45:10 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54538772cdbe0b0ef24770b7f449fb5da095c4262e667d68025bdde35fc1a3c7`  
		Last Modified: Tue, 13 Oct 2026 00:45:11 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c178070348c4ddf6cdb8633bba87d68d056e44c9bce09aca3ccc32871fdbfa`  
		Last Modified: Tue, 13 Oct 2026 00:45:11 GMT  
		Size: 74.5 KB (74543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f507e65d07396ec70c1ec39609e574fddc73d0ad37a31eb28db47f00d7fc8270`  
		Last Modified: Tue, 13 Oct 2026 00:45:11 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b339a7b70dcd686d3c10047433b2f59bbe50bd80b802e11bd93245e3f4fbf0f3`  
		Last Modified: Tue, 13 Oct 2026 00:45:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:e25f626b2cb29fea23f16988e30b63709a1f30480c88ad656de0cbbeef50dbf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6140343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e50fc92d0aee9374608f526bff638b9ce91cb889e5ff155706d3b03fcf5b7`

```dockerfile
```

-	Layers:
	-	`sha256:4e4419258f3c902e935e9fbb2142e66f3f580cf549cdcba9d309323777584897`  
		Last Modified: Tue, 13 Oct 2026 00:45:08 GMT  
		Size: 6.1 MB (6097117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8011a0fd69790a536b1c561769591bde495c9971ad24c6d46015ec60663fe217`  
		Last Modified: Tue, 13 Oct 2026 00:45:08 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:a35ba748306cfa6c5a3f4a5ba47d562e3592e5a2ddae10f6540c1a939ed7cc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.8 MB (548773941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac200737cf413d1529f0ca4c1c594f9b500186c52b30110f3cba522d6495eac`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:33:51 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 00:33:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:40:44 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 00:40:45 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:40:45 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:40:45 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 00:40:45 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:40:46 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 00:40:47 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 00:40:47 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 00:40:47 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 00:40:47 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 00:40:47 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:40:47 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 00:40:47 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 00:40:47 GMT
USER 1000
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0fe5de7a279a7d846f3295bdf792d33d15a17704bb5baa8d1646746c8f838`  
		Last Modified: Tue, 13 Oct 2026 00:42:03 GMT  
		Size: 19.3 MB (19256922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdba6c6fd7668771f2d0bbfc50f251ae17f01cf9d91d6f365617c46e3ecd90`  
		Last Modified: Tue, 13 Oct 2026 00:42:11 GMT  
		Size: 474.2 MB (474161253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49df5d3af67c3c696159cc0707c5c20434de499997d8ce75586330eb1217ed14`  
		Last Modified: Tue, 13 Oct 2026 00:42:02 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac438339a63b09f020f144598f4f8f1df3d9c62a2cbcc4454d8d147730a04393`  
		Last Modified: Tue, 13 Oct 2026 00:42:03 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99093e87dd92b76ea285d27ba263a25f0887d26bd1ec58d397470ad39aa871c9`  
		Last Modified: Tue, 13 Oct 2026 00:42:03 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec37b02a28f2c8c0888b9f83590a3348fc4a270427c9eb1b39ab22ef96d016`  
		Last Modified: Tue, 13 Oct 2026 00:42:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e290b06d023ebbbdfead0c6ddea645235315ee49bfc122743170ece188afa80`  
		Last Modified: Tue, 13 Oct 2026 00:42:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8397d58e8618e68d21f753ae5f762f4b3f2848e66ebfe8e2fa754af6dd5093a9`  
		Last Modified: Tue, 13 Oct 2026 00:42:05 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdb9605497c78c8cdc86a95c598195a67baeedb8e4164e23a26a071b93c65b1`  
		Last Modified: Tue, 13 Oct 2026 00:42:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f2f0c8b771e22cd78c6fa05d84066f8e85e6f455e72967792925fe5dd98e7d`  
		Last Modified: Tue, 13 Oct 2026 00:42:06 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445ebb17b5b2a1f361015ec389efacf5905a5e1554d682d8429c03b02b0759cf`  
		Last Modified: Tue, 13 Oct 2026 00:42:06 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a692dd37f9d5c25cfaa218ead26220fbbb82d6a7edfdb499be5aad563ea43993`  
		Last Modified: Tue, 13 Oct 2026 00:42:07 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:03e6fefe939dd1dbae87007047765c2f9f307cd6cee35cd132096e18bace9d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a32283e2c7b3033aad2894b9244e3b090d5f48879f4f57e63819ca2609e303c`

```dockerfile
```

-	Layers:
	-	`sha256:ee0cc60a06c712a213ff626dc3a4454ae01be5b41f030f22c2608b9dcb99b1e9`  
		Last Modified: Tue, 13 Oct 2026 00:42:02 GMT  
		Size: 6.1 MB (6094007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be706b9c8a2fc8f162efe7ea4c1d434e2afdda3e9cbd4fd9a92aee904955e20`  
		Last Modified: Tue, 13 Oct 2026 00:42:02 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
